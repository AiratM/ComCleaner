Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\COM Name Arbiter\" "ComDB" 
Set-itemproperty "HKLM:\SYSTEM\CurrentControlSet\Control\COM Name Arbiter" "ComDB" -Type Binary -Value ([byte[]](0x00))
Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\COM Name Arbiter\" "ComDB" 
