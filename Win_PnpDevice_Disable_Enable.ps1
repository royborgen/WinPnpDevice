#Get's user parameters
param(
    [Parameter()]
    [String]$action
)
#An array containing device ID's
$pnpId = 'HID\VID_044F&PID_0402\7&447A713&0&0000', 'HID\VID_044F&PID_0404\7&378B9D2&0&0000'

#Runs through the device array
foreach ($deviceId in $pnpId) {
  #If parameter is enable, enable the device
	if ($action -eq "enable") {
		Write-Host "Enabling device $deviceId";  Enable-PnpDevice -InstanceId $deviceId -Confirm:$false;
	}
  #if parameter is disable, disable the device
	if ($action -eq "disable") {
		Write-Host "Disabling device $deviceId";  Disable-PnpDevice -InstanceId $deviceId -Confirm:$false;
	}
	
}
