(ê)
Prgm
If ok=7 Then
Return 
EndIf
dim(ê)→αszc
αszc[1]→αnec
αszc[2]→αncc
DelVar αζ,v0
For αζ,1,αnec
string(ê[αζ,1])→αζ1
string(ê[αζ,2])→αζ2
string(ê[αζ,3])→αζ3
string(ê[αζ,4])→αζ4
If αncc<5 Then
"0"→αζ5
Else
string(ê[αζ,5])→αζ5
EndIf
expr("DelVar i"&αζ1)
expr("DelVar s"&αζ1)
expr("DelVar p"&αζ1)
expr("DelVar v"&αζ1)
expr("DelVar v"&αζ2)
expr("DelVar v"&αζ3)
left(αζ1,1)→αζ11
If αζ11="o" Then
expr("DelVar v"&αζ4)
EndIf
If αζ1≠"c" Then
expr("DelVar r"&αζ1)
EndIf

If instring("t,z,y,h,g,a,b",αζ11)≠0 Then
expr("DelVar i"&αζ1&αζ2)
expr("DelVar i"&αζ1&αζ3)
EndIf
EndFor
DelVar αζ,αζ11
EndPrgm