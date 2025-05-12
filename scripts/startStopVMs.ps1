<##>

param(
    [parameter(Mandatory=$true)]
    [String] $VMName = "Specify the VM Name (*Wildcards are accepted*)",
    
    [parameter(Mandatory=$true)]
    [ValidateSet("start","stop")] 
    [String] $DesiredState = "*start* or *stop*)",

    [parameter(Mandatory=$false)]
    [bool]$Simulate = $false
)

$connectionName = "AzureRunAsConnection"

# Function to handle power state assertion for resource manager VM
function EnforcePowerState
{
    param(
        [Object]$VirtualMachine,
        [string]$DesiredState,
        [bool]$Simulate
    )

    # Get VM with current status
    $resourceManagerVM = Get-AzureRmVM -ResourceGroupName $VirtualMachine.ResourceGroupName -Name $VirtualMachine.Name -Status
    $currentStatus = $resourceManagerVM.Statuses | where Code -like "PowerState*" 
    $currentStatus = $currentStatus.Code -replace "PowerState/",""

    # If should be started and isn't, start VM
    if($DesiredState -eq "Started" -and $currentStatus -notmatch "running")
    {
        if($Simulate)
        {
            Write-Output "[$($VirtualMachine.Name)]: SIMULATION -- Would have started VM. (No action taken)"
        }
        else
        {
            Write-Output "[$($VirtualMachine.Name)]: Starting VM"
            $VirtualMachine | Start-AzureRmVM -ErrorAction Continue
        }
    }
        
    # If should be stopped and isn't, stop VM
    elseif($DesiredState -eq "StoppedDeallocated" -and $currentStatus -ne "deallocated")
    {
        if($Simulate)
        {
            Write-Output "[$($VirtualMachine.Name)]: SIMULATION -- Would have stopped VM. (No action taken)"
        }
        else
        {
            Write-Output "[$($VirtualMachine.Name)]: Stopping VM"
            $VirtualMachine | Stop-AzureRmVM -Force
        }
    }

    # Otherwise, current power state is correct
    else
    {
        Write-Output "[$($VirtualMachine.Name)]: Current power state [$currentStatus] is correct."
    }
}

# Getting credentials
try
{
    # Get the connection "AzureRunAsConnection"
    $servicePrincipalConnection = Get-AutomationConnection -Name $connectionName         

    Write-Output ("Logging in to Azure...")
    Add-AzureRmAccount `
        -ServicePrincipal `
        -TenantId $servicePrincipalConnection.TenantId `
        -ApplicationId $servicePrincipalConnection.ApplicationId `
        -CertificateThumbprint $servicePrincipalConnection.CertificateThumbprint
    
    # Get a list of Resource Manager Virtual Machines
    $resourceManagerVMList = @(Get-AzureRmVm | where {$_.Name -like $VMName} | sort Name)

    # For each VM, enforce its correct power state
    Write-Output ("Processing [$($resourceManagerVMList.Count)] virtual machines...")
    foreach($vm in $resourceManagerVMList)
    {

        # Enforce desired state for group resources based on parameter. 
        if($DesiredState -eq "start")
        {
            Write-Output "[$($vm.Name)]: falls within the scheduled start range"
            EnforcePowerState -VirtualMachine $vm -DesiredState "Started" -Simulate $Simulate
        }
        else
        {
            Write-Output "[$($vm.Name)]: falls within the scheduled stop range"
            EnforcePowerState -VirtualMachine $vm -DesiredState "StoppedDeallocated" -Simulate $Simulate
        }

    }

    Write-Output "Finished processing virtual machine schedules"


}
catch {
    if (!$servicePrincipalConnection)
    {
        $ErrorMessage = "Connection $connectionName not found."
        throw $ErrorMessage
    elseif(!$resourceManagerVMList){
        $ErrorMessage = "Virtual Machines $VMName not found."
        throw $ErrorMessage
    }
    } else{
        Write-Error -Message $_.Exception
        throw $_.Exception
    }
}
