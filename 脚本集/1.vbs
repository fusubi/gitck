on error resume next
Dim i
i=4
name="inputbox"
name=inputBox(name,"用法")
while i>1
if i>2 then
msgBox name,0+32,"if"
i=i-1
else
msgbox "else"
i=i-1
end if
Wend
Select case i
case 1
msgbox "select case"
case else
end select
msgbox ucase("ucase")
msgbox lcase("Lcase")
for j=0 to 2
j=j+1
msgbox "for next"
next
dim arr(10)
arr(0)=2
arr(1)=3
arr(2)=4
c=0
for each ar in arr
c=c+ar
if ar=4 then
exit for
end if
next
msgbox "for each and 数组 exit for",0,c
do while arr(1)>0
msgbox "do while"
arr(1)=arr(1)-1
loop
do until arr(0)<0
msgbox "do until and exit do"
arr(0)=arr(0)-1
exit do
loop
Function func(a,b)
msgbox "function return",0,a+b
func=a+b
end function
Function func2(a,b)
msgbox "function directly use",0,a+b
func2=a+b
end function
call func2(2,3)
msgbox func(1,2)
if err.number<>0 then
wscript.echo err.number&err.descriptipn&err.source&err.helpcontext&err.helpfile
wscript.sleep 10000
err.raise
end if
