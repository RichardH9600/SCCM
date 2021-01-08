$SMSCli = [wmiclass] "root\ccm:SMS_Client"
if($SMSCli){
 $check = $SMSCli.RequestMachinePolicy()
 $check = $SMSCli.EvaluateMachinePolicy()
} else{write-host "$srv, Could not bind WMI class SMS_Client"}
