


# Move to Windows Folder
Set-Location C:/Windows
cd C:/Windows

# Get contents of directory and write them to a text file.
Get-ChildItem > MyDir.txt
dir > MyDir.txt

# Display in the shell the contents of the newly created text file
Get-Content MyDir.txt
type MyDir.txt

# Renaming the file 
Rename-Item -Path MyDir.txt -NewName WindowsDir.txt
ren MyDir.txt WindowsDir.txt

# Getting the contents of the newly renamed file
Get-Content WindowsDir.txt
type WindowsDir.txt

# Create a new directory named LabOutput
New-Item -Path C:\Windows -Name LabOutput -Type directory
mkdir LabOutput

# Copy WindowsDir into LabOutput
Copy-Item -Path C:\Windows\WindowsDir.txt -Destination LabOutput\WindowsDir.txt
copy C:\Windows\WindowsDir.txt LabOutput\WindowsDir.txt

# Delete original WindowsDir.txt file
Remove-Item -Path C:\Windows\WindowsDir.txt
del C:\Windows\WindowsDir.txt

# Display List of Running Properties
Get-Process
tasklist

# Redirect Processes to Procs.txt
Get-Process > C:\Windows\Procs.txt
tasklist > C:\Windows\Procs.txt

# Move Procs.txt to LabOutput Folder
Copy-Item -Path C:\Windows\Procs.txt -Destination C:\Windows\LabOutput\Procs.txt
copy C:\Windows\Procs.txt C:\Windows\LabOutput\Procs.txt

# Display Content from newly pasted file a page at a time
Get-Content C:\Windows\LabOutput\Procs.txt | more
type C:\Windows\LabOutput\Procs.txt | more

