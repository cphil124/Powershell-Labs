


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