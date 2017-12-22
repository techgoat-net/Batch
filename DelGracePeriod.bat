@echo off
rem This tiny batch script will remove two registry keys or values responsible for grace period of Remote Desktop roles.
rem You can setup a scheduled task to reset grace period of 120 days.
rem
rem Important:
rem
rem You have to run this batch file as SYSTEM. Thats why I suggest to use scheduled tasks:
rem You can choose SYSTEM user to run a scheduled task easily and dont have to use PsExec tool or so.
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\RCM\GracePeriod" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\RCM" /v "LicensingGracePeriodExpirationWarningDays" /f
@echo on
