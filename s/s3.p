(ê,ω,µn1,µn2)
Prgm
If ok=7 Then
Return 
EndIf

If getType(s\si)≠"EXPR" Then
false→s\si
EndIf

If s\si=true Then
DelVar m,k,µ,n,p,f
"|k=13 and m=1–3 and µ=1–6 and n=1–9 and p=1–12 and f=1–15"→σΓsi
EndIf

0→αζg
0→αζn1
0→αζn2
For αζ,1,part(dim(ê),1)

string(ê[αζ,1])→αζ1
string(ê[αζ,2])→αζ2
string(ê[αζ,3])→αζ3
string(ê[αζ,4])→αζ4

left(αζ1,1)→αζ11

If αζ11="t" Then
If αζ2="0" or αζ3="0" Then
Dialog
Title "Notice!"
Text "Ideal transformer"&αζ1&"'s"
Text "nodes can't be reference"
Text "node 0. Please fix"
Text "circuit description."
EndDlog
3→ok
EndIf
EndIf

If αζ2=αζ3 Then
If αζ11≠"m" Then
Dialog
Title "Notice!"
Text "Both nodes of "&αζ1
Text "can't be the same. Please"
Text "fix circuit description."
EndDlog
3→ok
EndIf
EndIf

ê[αζ,1]→αζω
If getType(αζω)≠"VAR" Then
Dialog
Title "Notice!"
Text "The name of element #"&string(αζ)
Text "is not appropriate. Please"
Text "fix circuit description."
EndDlog
3→ok
EndIf

If αζ2="0" or αζ3="0" Then
1→αζg
EndIf

If βtool="th" or βtool="po" Then
If αζ2=string(µn1) or αζ3=string(µn1) Then
1→αζn1
EndIf
If αζ2=string(µn2) or αζ3=string(µn2) Then
1→αζn2
EndIf
EndIf

If βtool="fd" and instring("e,j",αζ11)≠0 Then
If αζ4≠string(ê[αζ,4]|t=0) Then
Dialog
Title "Notice!"
Text "In '"&βtool&"' analysis the value of '"&αζ1&"'"
Text "can't be in terms of variable 't'."
Text "Please fix this source's description."
EndDlog
3→ok
EndIf
EndIf

EndFor

If βtool="th" or βtool="po" Then
If string(µn1)=string(µn2) Then
Dialog
Title "Notice!"
Text "Both nodes used as input"
Text "are the same node. Please"
Text "fix command description."
EndDlog
3→ok
EndIf
If αζn1=0 Then
Dialog
Title "Notice!"
Text "Circuit doesn't contain"
Text "a node named "&string(µn1)&". Please"
Text "fix circuit description."
EndDlog
3→ok
EndIf
If αζn2=0 Then
Dialog
Title "Notice!"
Text "Circuit doesn't contain"
Text "a node named "&string(µn2)&". Please"
Text "fix circuit description."
EndDlog
3→ok
EndIf
Else
If αζg=0 Then
Dialog
Title "Notice!"
Text "Circuit must contain at"
Text "least one node labeled as"
Text "reference node 0. Please"
Text "fix circuit description."
EndDlog
3→ok
EndIf
EndIf

DelVar αζ,αζg,αζω,αζn1,αζn2,αζ5t,αζ11,αζ1,αζ2,αζ3,αζ4,αζ11
EndPrgm