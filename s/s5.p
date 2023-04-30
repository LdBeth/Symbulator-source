(ê,ω)
Prgm
If ok=7 Then
Return 
EndIf
setMode("Display Digits","FLOAT 9")
setMode("Exponential Format","Normal")
0.→ok
DelVar αζ,αζg,ζβζ,ζζ,αζt,αszc,αnec,αncc,αuk1,αuk2,αeql,αdl,αζ11
false→iµpaλa
"{0"→iµpaexe
dim(ê)→αszc
αszc[1]→αnec
αszc[2]→αncc

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
expr("DelVar Γζ"&αζ2)
expr("DelVar Γζ"&αζ3)
expr("DelVar eq"&αζ1)
DelVar αζ11
left(αζ1,1)→αζ11

©SI Units 
If s\si=true Then
If instring("r,j,e,l,c",αζ11)≠0 Then
expr("ê[αζ,4]"&σΓsi)→ê[αζ,4]
EndIf
EndIf

©p(,)
If instring("r",αζ11)≠0 Then
If instring(αζ4,"p(")≠0 Then
Define p(Ω1,Ω2)=Ω1*Ω2/(Ω1+Ω2)
ê[αζ,4]→ê[αζ,4]
DelVar p
EndIf
EndIf

©
If βtool="tr" and instring("e,j",αζ11)≠0 Then
If instring(string(ê[αζ,4]),"u(t)")=0 and string(ê[αζ,4])≠string(ê[αζ,4]|t=0) Then
©ImpŲ in TR
true→iµpaλa
expr("DelVar φ"&αζ1)
iµpaexe&",φ"&αζ1&"="&string(dif\laplace(ê[αζ,4],t))→iµpaexe
expr("φ"&αζ1)→ê[αζ,4]
ElseIf instring(string(ê[αζ,4]),"u(t)")≠0 Then
©u(t) in TR
expr(string(dif\laplace(ê[αζ,4],t)))→ê[αζ,4]
Else
approx(ê[αζ,4])→αζrox
If getType(αζrox)="NUM" Then
©num in TR
ê[αζ,4]/s→ê[αζ,4]
Else
EndIf
EndIf
EndIf

©ImpŲ in FD
If βtool="fd" and instring("e,j",αζ11)≠0 Then
If string(ê[αζ,4])≠string(ê[αζ,4]|s=0) Then
true→iµpaλa
expr("DelVar φ"&αζ1)
iµpaexe&",φ"&αζ1&"="&string(ê[αζ,4])→iµpaexe
expr("φ"&αζ1)→ê[αζ,4]
EndIf
EndIf

DelVar αζ11
EndFor

s\s6(ê,ω)
setMode("Pretty Print","On")
If iµpaλa Then
For αζ,1,αnec
expr("DelVar φ"&αζ1)
EndFor
EndIf
Disp "Done."
DelVar αζ,ζζ,ζβζ,αszc,αnec,αncc,iµpaexe,iµpaj,iµpaλa,αζ1,αζ2,αζ3,αζ4,αζ5,γζ1,γζ2,γζ3,γζ4,γζ5,αζrox,αζ11
EndPrgm