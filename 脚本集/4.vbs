gmtset a=createobject("wscript.shell")
set objswbem=getobject("winmgmts:root\cimv2:win32_logicaldisk.deviceid='d:'")

wscript.echo objswbem.freespace

if false then
strComputer="."
Set objSWbemServices = GetObject("winmgmts:\\"&strComputer&"\root\cimv2")
Set colServices=objSWbemServices.ExecQuery("SELECT * FROM Win32_Service Where state = 'Running'")
WScript.Echo "��������---��������"
For Each objService In colServices
WScript.Echo objService.name&"---"&objService.Description
Next
Set objLocator = CreateObject("WbemScripting.SWbemLocator")
Set objService = objLocator.ConnectServer(".", "root\cimv2")
Set colItems = objService.ExecQuery("Select * from Win32_CDROMDrive")
For Each objItem in colItems
WScript.Echo "����������������: " & objItem.Caption
WScript.Echo "�̷���: " & objItem.Id
Next
Set objSWbemObjectSet=objService.InstancesOf("Win32_Processor")
For Each objSWbemObject In objSWbemObjectSet
Wscript.echo "CPU���ͺ�Ϊ��" & objSWbemObject.name
Next
set objswbemservices=getobject("winmgmts:")
set o=objswbemservices.get("win32_logicaldisk.deviceid='c:'")
wscript.echo  o.freespace'BΪ��λ

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
'a.appactivate"����MAE-301U ��������"
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
'a.sendkeys"%{f4}"'���߹ػ�win+x��u��u������û��windows������ϱ�ʾ��ʽ��^{esc}ֻ�ܴ������˵�
a.run"""D:\Program Files (x86)\Tencent\QQ\Bin\QQ.exe""",0'·�������пո���������˫������������������Ҳ���·���Ĵ���
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
a.appactivate "ss.txt-���±�"'AppActivate title,wait��佫�������Ϊ����Ӧ�ó���򴰿ڣ�������Ӱ����󻯻�����С������ �������û�ִ��ĳ���������Ľ����رմ���ʱ�����Ѽ����Ӧ�ó��򴰿��ƶ��� ʹ�� Shell ����������Ӧ�ó������ô�����ʽ��
'��ȷ��Ҫ�����Ӧ�ó���ʱ��title ����ÿ���������е�Ӧ�ó���ı����ַ������бȽϡ� ���û����ȫƥ�����򽫼���������ַ����� title ��ͷ���κ�Ӧ�ó��� ����ж���� title ������Ӧ�ó����ʵ���������⼤��һ��ʵ����waitΪtrue��ȴ����н��㣬Ĭ��false
a.sendkeys"nihaoshaa1"'���ݿ��Ը�
a.sendkeys"^s"
wscript.sleep(2000)
a.sendkeys"test.png{enter}{enter}{enter}"'���ֿ��Ը�
a.sendkeys "+"
a.sendkeys "hellow world"
'a.sendkeys "{enter}"
Function ConvertStringEncoding(str, srcEncoding, destEncoding)
    Dim streamIn, streamOut

    ' ��������������
    Set streamIn = CreateObject("ADODB.Stream")
    streamIn.Open
    streamIn.Charset = srcEncoding
    streamIn.WriteText str
    streamIn.Position = 0

    ' �������������
    Set streamOut = CreateObject("ADODB.Stream")
    streamOut.Open
    streamOut.Charset = destEncoding

    ' ���������ж�ȡת��������ݣ���д�������
    streamOut.WriteText streamIn.ReadText
    streamIn.Close
    streamOut.Position = 0

    ' ����ת������ַ���
    ConvertStringEncoding = streamOut.ReadText
    streamOut.Close
End Function
's=altercharset("hellow wolrd","Big5","UTF-8")
s= ConvertStringEncoding("hellow world", "GBK", "UTF-8")
'a.sendkey string string ��shift����+��ctrl����^,alt����%����סctrl��ͬʱ����ec��Ӧ^(ec),��^ec��ʾͬʱ��סctrl��eȻ���ɿ�ctrl��������c����{}���Ա�ʾ+��^��%��esc��enter��down���ȣ�{+}��{x 10}���ʾ����10����ĸx��a.sendkey"^{esc}u"����ctrl��esc�൱�ڰ�win���򿪿�ʼ�˵������Ű�u���򿪹ػ��˵�(�ɰ�windows��
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
'Ҫָ���ַ����ʹ�����д��룺
'
'Key        |    Code
'---------------------------
'Alt              %
'Ctrl             ^
'Shift Lock       + 
'
'���磬Ҫָ��CTRL��C��������`object.SendKeys "^C"`��
'SHIFT F5 ������`object.SendKeys "+{F5}"`��
'��Ҫָ�������ϼ�����ALT A Z����ʹ��Բ����()��������`object.SendKeys '"%(AZ)"`��
end if