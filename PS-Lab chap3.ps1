# Chapter 3 Lab
# Because this chapter centers around PS Help and function discovery, some Powershell cmdlets won't have 
# cmd equivalents


#Update-Help run to update all Help Content for PS
Update-Help
#No cmd equivalent

# Convert text output to html. 
help html
ConvertTo-Html
# ex.
Get-ChildItem | ConvertTo-Html > dir.html

# Find commands related to file and printer
Get-Command -noun file, printer

# Redirect output to a file
help file
Out-File
# Used for redirection to file like (>) operator, but can be used when one wants to take 
# advantage of parameters. 

# Redirect output to a printer
Out-Printer

# Find process related commands
Get-Command -noun process

#cmdlets for managing processes
Debug-Process
Get-Process
Set-ProcessMitigation
Get-ProcessMitigation
Start-Process
Stop-Process
Wait-Process

# Get commands for interacting with Eventlogs
Get-Commnd -noun eventlog

#cmdlet for writing to an eventlog
Write-EventLog

# Get commands relating to aliases
Get-Command -noun alias

# cmdlets related to aliasing
Export-Alias
Get-Alias
Import-Alias
New-Alias
Set-Alias

# Get commands related to transcripts
Get-Command -noun transcript
Get-Command -no transcript

# cmdlet for tracking what you type
Start-Transcript
Stop-Transcript

# Retrieve the top 100 Eventlogs
Get-WinEvent -MaxEvents 100

# Get a listing of the services on a local or remote computer
Get-Service -ComputerName remoteComputerName

# Get list of Processes running on a remote computer
Get-Process -ComputerName remoteComputerName

# Sending output to a file with customized file width
Out-File -Width SpecifiedWidth

# Out-File to append to an already existing file
Out-File -FilePath filename -Append

# Get list of all aliases available in PS
Get-Item -path ALIAS:

# Shortest command to get a list of running processes on a machine called 'Server1'
cps -ComputerName Server1
ps -c Server1

# Find commands for interacting with generic objects
Get-Command -no object

# General cmdlets for interacting with generic objects
Compare-Object
ForEach-Object
Group-Object
Measure-Object
New-Object
Select-Object
Sort-Object
Tee-Object
Where-Object

# Command to get information about arrays
help *array*

