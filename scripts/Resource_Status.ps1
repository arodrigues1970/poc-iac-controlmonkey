if ([Environment]::UserName -eq "Administrator") {
    Import-Module Az
    Connect-AzAccount -Identity
}
$dFormat = "%Y-%m-%d %H:%M:%S";
$subscriptionHash = @{
    "SUBSCRIPTION-IT-DEV" = "subscriptionid"
    "SUBSCRIPTION-IT-SIT" = "subscriptionid"
    "SUBSCRIPTION-IT-UAT" = "subscriptionid"
    "SUBSCRIPTION-IT-HUB" = "subscriptionid"
    "SUBSCRIPTION-IT-PRD" = "subscriptionid"
}

$email = "email@gmail.com";
$password = "tnoalebppyjdvtkc";
$toMail = @("rafael.afonso@novobanco.pt", "renato@novobanco.pt");
$subject = "[NOVOBANCO] Status dos recursos";
$port = 587;
$smtpServer = "smtp.gmail.com";
$securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force;
$credential = New-Object System.Management.Automation.PSCredential ($email, $securePassword);

$VMListArray = @();
$AKSListArray = @();

$body = "
<head>
    <style>
        thead > td {
            font-weight: bold;
        }
        td {
            border-top: 1px solid black;
            border-right: 1px solid black;
            border-left: 1px solid black;
        }
        td:last-child {
            border-bottom: 1px solid black;
        }
    </style>
</head>
<body>";
$bodyVMs = "<table> 
                <thead>
                    <td>VM Name</td>
                    <td>Resource Group</td>
                    <td>Subscription Name</td>
                    <td>Status</td>
                </thead>";

$bodyAKS = "<table> 
                <thead>
                    <td>AKS Name</td>
                    <td>Subscription Name</td>
                    <td>Status</td>
                </thead>";

foreach ($subscriptionName in $subscriptionHash.keys) {
    Write-Host ("[$(Get-Date -UFormat $dFormat)] Subscrição atual: $($subscriptionName)");
    $selectedSubscription = (Select-AzSubscription -SubscriptionId $subscriptionHash[$subscriptionName]);
    Write-Host ("[$(Get-Date -UFormat $dFormat)] Listando VMs da subscrição: $($subscriptionName)");
    $VMList = (Get-AzVM);
    $body += 
    Write-Host ("[$(Get-Date -UFormat $dFormat)] $($VMList.Length) VMs encontradas na subscrição: $($subscriptionName)");
    $counterVMs = 1;
    foreach ($VM in $VMList) {
        Write-Host ("[$(Get-Date -UFormat $dFormat)] VM atual: $($VM.Name) - $($counterVMs)/$($VMList.Length)");
        $VmPowerStatus = (Get-AzVM -Name $VM.Name -ResourceGroupName $VM.ResourceGroupName -Status).Statuses.code;
        $VmPowerStatus = $VmPowerStatus.Split("PowerState/")[2];
        Write-Host ("[$(Get-Date -UFormat $dFormat)] Status VM $($VM.Name):  $($VmPowerStatus)");
        $VMListArray += @{
                            "ResourceName"      = $VM.Name
                            "ResourceGroupName" = $VM.ResourceGroupName
                            "SubscriptionName"  = $subscriptionName
                            "Status"            = "Power State: $VmPowerStatus"
                        }
        $bodyVMs += "<tr>
                        <td>$($VM.Name)</td>
                        <td>$($VM.ResourceGroupName)</td>
                        <td>$($subscriptionName)</td>
                        <td>$("Power State: $VmPowerStatus")</td>
                    </tr>";
        $counterVMs++;
    }

    $AKSList = (Get-AzAksCluster -WarningAction SilentlyContinue);
    Write-Host ("[$(Get-Date -UFormat $dFormat)] $($AKSList.Length) AKS encontrados na subscrição: $($subscriptionName)");
    $counterAKS = 1;
    foreach ($AKS in $AKSList) {
        Write-Host ("[$(Get-Date -UFormat $dFormat)] AKS atual: $($AKS.Name) - $($counterAKS)/$($AKSList.Length)");
        $provisioningState = $AKS.ProvisioningState;
        Write-Host ("[$(Get-Date -UFormat $dFormat)] Status AKS $($AKS.Name):  $($provisioningState)");
        $AKSListArray += @{
                            "ResourceName"      = $AKS.Name
                            "ResourceGroupName" = $AKS.ResourceGroupName
                            "SubscriptionName"  = $subscriptionName
                            "Status"            = "Provisioning State: $provisioningState"
                        }

        $bodyAKS += "<tr>
                        <td>$($AKS.Name)</td>
                        <td>$($subscriptionName)</td>
                        <td>$("Provisioning State: $provisioningState")</td>
                    </tr>";
        $counterAKS++;
    }
}

$bodyVMs += "</table>";
$bodyAKS += "</table>";
$body += $bodyVMs+"<br><br>"+$bodyAKS;

Write-Host ("[$(Get-Date -UFormat $dFormat)] Enviando e-mail");
Send-MailMessage    -From $email `
                    -To $toMail `
                    -Subject $subject `
                    -Body $body `
                    -SmtpServer $smtpServer `
                    -Port $port `
                    -BodyAsHtml:$True `
                    -Credential $credential `
                    -UseSsl `
                    -WarningAction SilentlyContinue;