#Requires -RunAsAdministrator

Get-Service | Export-Clixml services.xml
Stop-Service 'Bonjour Service'
diff -ref (Import-Clixml services.xml) -Diff (Get-Service)  -property name