gmtset a=createobject("wscript.shell")
set objswbem=getobject("winmgmts:root\cimv2:win32_logicaldisk.deviceid='d:'")

wscript.echo objswbem.freespace

if false then
strComputer="."
Set objSWbemServices = GetObject("winmgmts:\\"&strComputer&"\root\cimv2")
Set colServices=objSWbemServices.ExecQuery("SELECT * FROM Win32_Service Where state = 'Running'")
WScript.Echo "服务名称---服务描述"
For Each objService In colServices
WScript.Echo objService.name&"---"&objService.Description
Next
Set objLocator = CreateObject("WbemScripting.SWbemLocator")
Set objService = objLocator.ConnectServer(".", "root\cimv2")
Set colItems = objService.ExecQuery("Select * from Win32_CDROMDrive")
For Each objItem in colItems
WScript.Echo "光盘驱动器的类型: " & objItem.Caption
WScript.Echo "盘符是: " & objItem.Id
Next
Set objSWbemObjectSet=objService.InstancesOf("Win32_Processor")
For Each objSWbemObject In objSWbemObjectSet
Wscript.echo "CPU的型号为：" & objSWbemObject.name
Next
set objswbemservices=getobject("winmgmts:")
set o=objswbemservices.get("win32_logicaldisk.deviceid='c:'")
wscript.echo  o.freespace'B为单位

set a1=createobject("useraccounts.commondialog")
a1.filter="vbsfilel*.vbs"
a1.initialdir="c:\"
tf=a1.showopen
if tf then
slf=a1.filename
magbox slf
else wscript.quit
end if


set a1=createobject("safrcfiledlg.filesave")
a1.filename="test"
a1.filetype=".txt"
ir=a1.openfilesavedlg
if ir then
a.createtextfile(a1.filename&a1.filetype)
else 
wscript.quit
end if
'a.appactivate"连接MAE-301U 拨号连接"
'wscript.sleep(1000)
'a.sendkeys"{enter}"
a.run"iexplore"
wscript.sleep(1000)
a.appactivate"https://hao.360.com/?src=lm&ls=n144c1cd899"
a.sendkeys"%d"

wscript.sleep(1000)
a.sendkeys"+"
a.sendkeys"http://www.localhost:81{enter}"
wscript.sleep(1000)
a.sendkeys"{tab}"
wscript.sleep(1000)
a.sendkeys"{tab}{enter}"

a.sendkeys"(^+{esc})"
a.run"cmd"
wscript.sleep(1000)
a.sendkeys"+"
wscript.sleep(1000)
a.sendkeys"shutdown -s -t 10000000"
wscript.sleep(1000)
a.sendkeys"{enter}"
'a.sendkeys"%{f4}"'或者关机win+x再u再u，不过没有windows键的组合表示方式，^{esc}只能打开搜索菜单
a.run"""D:\Program Files (x86)\Tencent\QQ\Bin\QQ.exe""",0'路径里面有空格需用三队双引号引起来否则出现找不到路径的错误
wscript.sleep(2000)
set a1=createobject("scripting.filesystemobject")
set a2=a1.getfolder("D:\Program Files (x86)\Tencent\QQ\Bin")
set a3=a2.files
for each i in a3
if i.name=QQ.exe then 
wscript.echo i.path
end if 
next
a.run"notepad",9
wscript.sleep(2000)
a.sendkeys"^s"
wscript.sleep(2000)
a.sendkeys"ss{enter}{enter}"
a.sendkeys"^n"
a.appactivate "ss.txt-记事本"'AppActivate title,wait语句将焦点更改为命名应用程序或窗口，但不会影响最大化还是最小化它。 焦点在用户执行某个操作更改焦点或关闭窗口时将从已激活的应用程序窗口移动。 使用 Shell 函数可启动应用程序并设置窗口样式。
'在确定要激活的应用程序时，title 将与每个正在运行的应用程序的标题字符串进行比较。 如果没有完全匹配的项，则将激活其标题字符串以 title 开头的任何应用程序。 如果有多个按 title 命名的应用程序的实例，则将任意激活一个实例。wait为true则等待具有焦点，默认false
a.sendkeys"nihaoshaa1"'内容可自改
a.sendkeys"^s"
wscript.sleep(2000)
a.sendkeys"test.png{enter}{enter}{enter}"'名字可自改
a.sendkeys "+"
a.sendkeys "hellow world"
'a.sendkeys "{enter}"
Function ConvertStringEncoding(str, srcEncoding, destEncoding)
    Dim streamIn, streamOut

    ' 创建输入流对象
    Set streamIn = CreateObject("ADODB.Stream")
    streamIn.Open
    streamIn.Charset = srcEncoding
    streamIn.WriteText str
    streamIn.Position = 0

    ' 创建输出流对象
    Set streamOut = CreateObject("ADODB.Stream")
    streamOut.Open
    streamOut.Charset = destEncoding

    ' 从输入流中读取转换后的内容，并写入输出流
    streamOut.WriteText streamIn.ReadText
    streamIn.Close
    streamOut.Position = 0

    ' 返回转换后的字符串
    ConvertStringEncoding = streamOut.ReadText
    streamOut.Close
End Function
's=altercharset("hellow wolrd","Big5","UTF-8")
s= ConvertStringEncoding("hellow world", "GBK", "UTF-8")
'a.sendkey string string 中shift——+，ctrl——^,alt——%，按住ctrl的同时按下ec对应^(ec),而^ec表示同时按住ctrl和e然后松开ctrl单独按下c，用{}可以表示+、^、%，esc、enter、down、等，{+}，{x 10}则表示发送10个字母x，a.sendkey"^{esc}u"按下ctrl和esc相当于按win，打开开始菜单，接着按u键打开关机菜单(旧版windows）
'Key         |   Code
'-------------------------------------------
'Backspace       {BACKSPACE}, {BKSP} or {BS}
'Break           {BREAK}
'Caps Lock       {CAPSLOCK}
'Delete          {DELETE} or {DEL}
'Down Arrow      {DOWN}
'End             {END}
'Enter           {ENTER} or ~
'Escape          {ESC}
'Help            {HELP}
'Home            {HOME}
'Insert          {INSERT} or {INS}
'Left Arrow      {LEFT}
'Num Lock        {NUMLOCK}
'Page Down       {PGDN}
'Page Up         {PGUP}
'Print Screen    {PRTSC}
'Right Arrow     {RIGHT}
'Scroll Lock     {SCROLLLOCK}
'Tab             {TAB}
'Up Arrow        {UP}
'F1              {F1}
'F2              {F2}
'F3              {F3}
'F4              {F4}
'F5              {F5}
'F6              {F6}
'F7              {F7}
'F8              {F8}
'F9              {F9}
'F10             {F10}
'F11             {F11}
'F12             {F12}
'F13             {F13}
'F14             {F14}
'F15             {F15}
'F16             {F16}
'
'要指定字符组合使用下列代码：
'
'Key        |    Code
'---------------------------
'Alt              %
'Ctrl             ^
'Shift Lock       + 
'
'例如，要指定CTRL和C，代码是`object.SendKeys "^C"`。
'SHIFT F5 代码是`object.SendKeys "+{F5}"`。
'若要指定多个组合集，如ALT A Z，则使用圆括号()，代码是`object.SendKeys '"%(AZ)"`。
end if