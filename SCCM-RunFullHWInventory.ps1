Get-WmiObject -Namespace root\ccm\invagt -Class inventoryactionstatus | Where-Object {$_.inventoryactionid -eq "{00000000-0000-0000-0000-000000000001}"} | Remove-WmiObject
Invoke-WMIMethod -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000001}"
