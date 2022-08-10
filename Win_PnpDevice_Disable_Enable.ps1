#Get's user parameters
param(
    [Parameter()]
    [String]$action
)
#An array containing device ID's
$pnpId = 'HID\VID_044F&PID_0402\7&447A713&0&0000', 'HID\VID_044F&PID_0404\7&378B9D2&0&0000'

#Runs through the device array
foreach ($deviceId in $pnpId) {
	#check if device id is correct 
	$device = Get-PnpDevice -InstanceId $deviceId -ErrorAction SilentlyContinue
	
	if ($device){
		#If parameter is enable, enable the device
		if ($action -eq "enable") {
			Write-Host "Enabling device $deviceId";  Enable-PnpDevice -InstanceId $deviceId -Confirm:$false;
		#if parameter is disable, disable the device
		}elseif ($action -eq "disable") {
			Write-Host "Disabling device $deviceId";  Disable-PnpDevice -InstanceId $deviceId -Confirm:$false;
		}else {
			#get status of the device
    			switch ($device.Status) {
				#if status is ok, disable it
        			'OK'    { Write-Host "Disabling device $deviceId"; Disable-PnpDevice -InstanceId $deviceId -Confirm:$false; break }
        			#if status is default, enable it
				default { Write-Host "Enabling device $deviceId";  Enable-PnpDevice -InstanceId $deviceId -Confirm:$false }
    			}
		}
	}else {
		#wite a waring if device ID is not found
    		Write-Warning "Device with ID '$deviceId' not found"
	}
}
