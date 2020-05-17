@echo off&start "" rundll32 sysdm.cpl,EditEnvironmentVariables& goto:eof
:: gui launcher for env var 
:: run from the propmt/start
:: 'set' shows all vars
:: 'env' to change those
:: must be in path || %windir% etc
:: gui window is launched
::
:: set via cli too
:: asks key=val pair
:: see:
:: https://raw.githubusercontent.com/xbl3/cli/master/setENV.bat
::
:: //# LAUNCHES POWERSHELL TO INVOKE #//
::
:: or:
:: set "url=https://raw.githubusercontent.com/xbl3/cli/master/setENV.bat"
:: curl "%URL%"
:: wget "%URL%"
:: rclone copyurl "%URL%" --auto-filename .
::
:: same shit
:: curl "https://raw.githubusercontent.com/xbl3/cli/master/setENV.bat"
:: wget "https://raw.githubusercontent.com/xbl3/cli/master/setENV.bat"
:: rclone copyurl "https://raw.githubusercontent.com/xbl3/cli/master/setENV.bat" --auto-filename .
