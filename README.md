# Win_PnpDevice_Disable_Enable
Win_PnpDevice_Disable_Enable is a Powershell script that enables and disables Plug and Play devices in Windows. 

## Usage
The script runs with and without parameter. If no parameter is submittet it will disable or enable the devices based on current status. If the device is enabled it will be disabled. If it is disabled, it will be enabled. 

You can also provide the parameter action 'enabled or action 'disabled as shown bellow: 
```
./Win_PnpDevice_Disable_Enable.ps1 -action 'disable' 
./Win_PnpDevice_Disable_Enable.ps1 -action 'enable' 
