# 1
Get-Command -noun random
Get-Random

# 2
Get-Command -noun date
Get-Date

#3
$d = Get-Date
$d.gettype()  # Returns System.ValueType.DateTime Datatype

#4
get-date | gm  # list object properties
get-date | select-object dayofweek

#5
get-command -noun hotfix
get-hotfix

#6
get-hotfix | gm
get-hotfix | sort-object installedon | select hotfixid, installedby, installedon

#7
get-hotfix | sort-object description | select hotfixid, installedon, description
get-hotfix | sort-object description | select hotfixid, installedon, description | convertto-html | out-file hotfix.html
rmdir hotfix.html

#8
get-command -noun eventlog
get-eventlog -logname Security -newest 50
get-eventlog -logname Security -newest 50 | sort-object timewritten, index
get-eventlog -logname Security -newest 50 | sort-object timewritten, index | Select-Object index, timewritten, source
get-eventlog -logname Security -newest 50 | sort-object timewritten, index | Select-Object index, timewritten, source | outfile SecEvents.txt
rmdir SecEvents.txt





