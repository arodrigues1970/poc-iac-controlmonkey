## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_automation_account.account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_account) | resource |
| [azurerm_automation_certificate.certificate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_certificate) | resource |
| [azurerm_automation_job_schedule.job_schedule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_job_schedule) | resource |
| [azurerm_automation_job_schedule.job_schedule_redundancy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_job_schedule) | resource |
| [azurerm_automation_runbook.runbook](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_runbook) | resource |
| [azurerm_automation_schedule.schedule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_schedule) | resource |
| [azurerm_automation_schedule.schedule_redundancy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_schedule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automation_name"></a> [automation\_name](#input\_automation\_name) | Specifies the name of the Automation Account | `string` | n/a | yes |
| <a name="input_cert_base64"></a> [cert\_base64](#input\_cert\_base64) | Base64 encoded value of the certificate. | `string` | `null` | no |
| <a name="input_cert_description"></a> [cert\_description](#input\_cert\_description) | The description of this Automation Certificate. | `string` | `null` | no |
| <a name="input_cert_exportable"></a> [cert\_exportable](#input\_cert\_exportable) | The is exportable flag of the certificate. | `bool` | `true` | no |
| <a name="input_cert_name"></a> [cert\_name](#input\_cert\_name) | Specifies the name of the Certificate | `string` | `null` | no |
| <a name="input_cert_timeouts"></a> [cert\_timeouts](#input\_cert\_timeouts) | Timeouts for certain actions | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_job_schedule_list"></a> [job\_schedule\_list](#input\_job\_schedule\_list) | A list of all job schedules | <pre>list(object(<br>    {<br>      parameters    = map(string)<br>      run_on        = string<br>      runbook_name  = string<br>      schedule_name = string<br>      timeouts = list(object(<br>        {<br>          create = string<br>          delete = string<br>          read   = string<br>          update = string<br>        }<br>      ))<br>    }<br><br>  ))</pre> | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists | `string` | n/a | yes |
| <a name="input_redundancy"></a> [redundancy](#input\_redundancy) | Will these schedules have redundancy? | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which the Automation Account is created | `string` | n/a | yes |
| <a name="input_runbook_list"></a> [runbook\_list](#input\_runbook\_list) | A list of all Runbooks | <pre>list(object(<br>    {<br>      name         = string<br>      log_verbose  = string<br>      log_progress = string<br>      description  = string<br>      runbook_type = string<br>      content      = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_schedule_list"></a> [schedule\_list](#input\_schedule\_list) | A list of all schedules | <pre>list(object(<br>    {<br>      description = string<br>      expiry_time = string<br>      frequency   = string<br>      interval    = string<br>      month_days  = set(number)<br>      name        = string<br>      start_time  = string<br>      timezone    = string<br>      week_days   = list(string)<br>      monthly_occurrence = list(object(<br>        {<br>          day        = string<br>          occurrence = string<br>        }<br>      ))<br>      timeouts = list(object(<br>        {<br>          create = string<br>          delete = string<br>          read   = string<br>          update = string<br>        }<br>      ))<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU name of the account | `string` | `"Basic"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (optional) | `map(string)` | `null` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | Timeouts for certain actions | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_automation_id"></a> [automation\_id](#output\_automation\_id) | The Automation Account ID. |
| <a name="output_azurerm_automation_certificate_id"></a> [azurerm\_automation\_certificate\_id](#output\_azurerm\_automation\_certificate\_id) | The Automation Certificate ID. |
| <a name="output_dsc_primary_access_key"></a> [dsc\_primary\_access\_key](#output\_dsc\_primary\_access\_key) | The Primary Access Key for the DSC Endpoint associated with this Automation Account. |
| <a name="output_dsc_secondary_access_key"></a> [dsc\_secondary\_access\_key](#output\_dsc\_secondary\_access\_key) | The Secondary Access Key for the DSC Endpoint associated with this Automation Account. |
| <a name="output_dsc_server_endpoint"></a> [dsc\_server\_endpoint](#output\_dsc\_server\_endpoint) | The DSC Server Endpoint associated with this Automation Account. |
| <a name="output_thumbprint"></a> [thumbprint](#output\_thumbprint) | The thumbprint for the certificate. |
