# ComCleaner
PS Script for cleaning reserved COM ports
Very simple script for change registry value HKLM:\SYSTEM\CurrentControlSet\Control\COM Name Arbiter\. Set ALL reserved COM ports as available. Can be modified for selective labeling by a binary mask.
To run the script needs ALLOW to run unsigned scripts by command
Set-ExecutionPolicy RemoteSigned
or signing script.
Example 1.
Task: you need to mark all ports available except ports  #3 and #4 
Solution:
a)Reserved ports marks as 1, available ports marks as 0. 
b)Create binary mask and put in the hexadecimal system
|Port#| 1 | 2 | 3 | 4 |
-----------------------
|Mask | 0 | 0 | 1 | 1 |
So, needed mask 1100 if binary view. Port number equals bit number in mask (numeration from left to right) In the hexadecimal system 0x0C
c) edit sript, change -Value param to  ([byte[]](0x0C)) and run script
