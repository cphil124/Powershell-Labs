# Get-Process | Export-CSV procs.csv
# Import-CSV procs.csv

Get-Command -Verb Import | Export-clixml imports_cmdlets.xml

Get-Process | Export-CLIXML reference.xml 
Diff -ref (Import-Clixml reference.xml) -diff (Get-Process) -Property Name