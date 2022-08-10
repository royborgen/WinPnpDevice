# Win_PnpDevice
Win_PnpDevice is a Powershell script that enables and disables Plug and Play devices in Windows. 

## Usage
The script runs with and without parameter. If no parameter is submittet it will disable or enable the devices based on current status. If the device is enabled it will be disabled. If it is disabled, it will be enabled. 

You can also provide the parameter action 'enabled or action 'disabled as shown bellow: 
```
./Win_PnpDevice.ps1 -action 'disable' 
./Win_PnpDevice.ps1 -action 'enable'
```

## Needed modifications
Array $pnpId needs to be altered so it contain the deviceID of the device you wish enable or disable 
```
$pnpId = 'HID\VID_044F&PID_0402\7&447A713&0&0000', 'HID\VID_044F&PID_0404\7&378B9D2&0&0000'
```
Devicve ID can be found in Windows Device Manager:
1. Right click on the device and choose "Properties"
2. Choose "Details"
3. Under Property choose "Device Instance Path"
4. Right click on the value and choose copy
