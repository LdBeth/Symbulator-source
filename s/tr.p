(â)
Prgm
If ok=7. Then
Return 
EndIf
startTmr()→s\ttr
true→s\verbose
If getType(dif\ilaplace)≠"FUNC" Then
Dialog
Title "DiffEq is missing!"
Text "DiffEq is required to"
Text "perform this task."
EndDlog
Return 
EndIf
expr("DelVar βtool")
"tr"→βtool
s\s0(â,ω,µn1,µn2)
If ok=3. Then
0.→ok
DispHome
Return 
EndIf
s\s5(expr("["&û&"]"),1)
expr("DelVar βtool")
s\s9()
Disp "Elapsed: "&string(checkTmr(exact(s\ttr)))&" seconds."
DelVar s\ttr,û,s\verbose
DispHome
EndPrgm