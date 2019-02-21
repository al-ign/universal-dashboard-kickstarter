﻿#this snippet relies on the $Cache:DashboardRootPath variable, which should be defined in the dashboard.ps1

#load ParameterName, if available
$Config_ParameterName = (Join-Path  (Join-Path $Cache:DashboardRootPath 'Config') 'config_ParameterName.json' )
if (Test-Path $Config_ParameterName -ea 0) {
    try {
        $UDEPVarParameterName = @( Get-Content $Config_ParameterName | ConvertFrom-Json )
        }
    catch {
        $UDEPVarParameterName = @()
        }
    }
