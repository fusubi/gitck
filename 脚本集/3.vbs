set a=wscript.createobject("scripting.filesystemobject")
set a0=a.getfolder("C:")
a.createtextfile("nn")
set a6= a.getfile("nn")
set a7=a6.parentfolder
str=a.gettempname()
while a7.isrootfolder=false
set a7=a7.parentfolder
wend
pstr=a7.path
path=pstr&str
msgbox path
a.copyfolder a6.name&"n",path'ʹ��copyfile����Ȩ�޲���Ŀ�����ʮ�ֵĴ�
if false then
set a10= a6.parentfolder.parentfolder.parentfolder.parentfolder
wscript.echo a10.path&vbcrlf&a6.path
str=a.gettempname()
a.createfolder(str)
a.copyfolder str,a10.path&"\"
'textstream���� atendofline����ļ�ָ�����ļ���һ�е�ĩβ�򷵻�true
'atendofstream����ļ�λ��ָ�����ļ���ĩβ�򷵻�true
'column��1��ʼ�����ļ��е�ǰ�ַ����к�
'line��һ��ʼ���ص�ǰ�ַ����к�
'anendofline��atendofstream���Խ���iomode����Ϊforreading�ķ�ʽ�򿪵��ļ����ã���������
'textstream������close����
'read��n�����ļ��ж���n���ַ�
'readall��Ϊ�����ַ������������ļ�
'readlin������Ϊһ���ַ������ļ��ж���һ�У�ֱ���س��ͻ���
'skip��n�������ļ���ȡ�Ǻ���n���ַ�
'skipline�����ļ�������������һ��
'write��string�����ļ�д���ַ���string
'writeline��string�����ļ�д���ַ���string��ѡ�ͻ��з�
'writeblankline��n�����ļ�д��n�����з�

'textstream�������ڷ����ı��ļ��Ķ�����filesystemobjectһ�������ĸ������󣬿���ͨ��createtextfile��opentextfile����ȡtextstream�Ķ�����
set a3=a.getfolder("ͼ��")
set a5=a3.getfile("text.png")'����getfile��������folder������
msgbox a5.datelastaccessed
'file�Ӷ�������Ժ�folder����һ��
'copyfile(source,destination,overwrite)��source�����һ�������ļ����Ƶ�destination�����source�������ļ���destinationĩβ��\��ʾdestination���ļ��У������ʾ���ļ�������overwrite��true��false���жԿ��ܴ��ڵ��ļ�destination���л᲻�Ḳ��
'createtextfile,delefile,fileexists��movefile�÷��������ƽ���
'getbasename��filespec�������ļ�·��ȥ������չ����getextensionname��fllespec�������ļ���չ��
'getfile��filespec�����ض�Ӧ��file����getfilename��pathspec������ָ�����ļ���·�����ļ��������û���ļ����ͷ��������ļ�������������ļ����ļ����Ƿ����
'gettempname��������һ������������ļ�����������������������ʱ�ļ����ļ���
'opentext(filename,iomode,create,format)�������һ����Ϊfilename���ļ�������textstream����iomodeָ������Ҫ��ĵķ������ͣ���forreading��1����ȱʡ����forwrite��2����forappending(8)
'createΪtrue������һ��ԭ�������ڵ����ļ���ȱʡfalse��format��ֵtristatetfalse��0����ȱʡ����ASCII��ʽ�򿪣�tristatettrue��-1����unicode��ʽ�򿪣�tristatetdefault��-2����ϵͳȱʡ�ĸ�ʽ��
set a3=a.getfolder("C:\Users\LX")
dim arra(10)
i=0
j=0
arra(i)=0
while arra(i)<10
j=j+arra(i)
i=i+1
arra(i)=i
Wend
msgBox j
set b=a3.subfolders	
for each a4 in b
msg=msg&a4.path&vbcrlf
next
msgBox msg
'folder�Ӷ�������ԣ�attributes�����ļ��е����Կ���������ֵ�е�һ��������ϣ�normal��0����readonly��1����hidden��2����system��4����volumn�����ƣ���8����directory��16)archive��32����alias��64����compressed��128����һ�����ص�ֻ���ļ�attribute��ֵ��3
'datacreated ���ظ��ļ��Ĵ������ڻ���ʱ��
'datelastaccessed�������һ�η��ʸ��ļ��е����ڻ���ʱ��
'datalastmodified�������һ���޸ĸ��ļ��е����ں�ʱ�䣬���ظ��ļ������ڵ�����������������ĸ������folder���������files���ϣ���ʾ���ļ��������е��ļ�
'isrootfolder����һ������ֵ˵�����ļ����Ƿ��ǵ�ǰ�������ĸ��ļ���
'name�趨�򷵻��ļ��е�����
'parentfolder���ظ��ļ��еĸ��ļ��ж�Ӧ��folder����
'path�����ļ��еľ���·����ʹ����Ӧ�ĳ��ļ���
'shortname����dos����8.3��ʽ���ļ�����
'shortpath����dos����8.3��ʽ���ļ��еľ���·��
'size���ذ����ڸ��ļ����������ļ������ļ��еĴ�С
'subfolders���ظ��ļ����ڰ������������ļ��ж�Ӧ��folders���ϣ����������ļ��к�ϵͳ�ļ���
'type������ܣ�����һ���ļ��е�˵���ַ��������磬��recycle bin����
'files��ȡ���ļ����󼯺�
a.createtextfile "ͼ��\text.png"
set a1=a.getfolder("ͼ��")
a1.createtextfile "test.ico"
a1.createtextfile "directtext",false,true '����ĵڶ�����false��ʾ�����ǣ�����λ��false��ʾunicode���룬����createtextfile�������ļ������Ǹ�����չ����ȷ���ģ�filesystemobject����Ҳ���Ե���createtextfile()
strpath=inputBox("�����봴���ļ���·��")
strfile=inputBox("�����봴���ļ�������")
call createfilex(strpath,strfile)
sub createfilex(path,file)
set a2=a.getfolder(path)
a2.createtextfile file,true
end sub
a1.copy "foledertext2\",false'����ļ���ĩβ��û��\�ͻ�����ļ����Ѿ����ڵĴ�����ʱ��ĳ�true�������½�һ���ļ��У�move��delete�ȹ�����ͬЧ������ͬ
a.copy "1.vbs","5.vbs"'������Ϊa��filesystem���󣬶��ļ���folder
a.movefolder source,destination'��sourceָ����һ�������ļ����ƶ���destinationָ�����ļ��У����source����ͨ�����destinationĩβ��·���ָ��\����Ϊdestination��Ҫ����Դ�ļ��е��ļ���'������Ϊ����һ�����ļ��е�����·�������֣����destination�Ѿ��������������
a.getspecialfolder(folderspec)'����һ���ض���windows�ļ��ж�Ӧ��folder���󣬲���folderspec������ֵ��windowsfolder��0����systemfolder��1����temporaryfolder��2��
a.getparentfoldername(pathspet)'����pathspec�ļ����ļ��е���һ���ļ��У�����֤���ļ��Ƿ��Ѿ�����
a.folderexists(folderspec)'����ļ����ڷ���true�����򷵻�false
a.deletefolder "foldertext"',forceΪtrue��ʹ�ļ���������ļ�ֻ��ֻ������һ������ɾ����ȱʡΪfalse
a.createfolder "foldertex"'����ļ����Ѿ����ڻᱨ��,�������ʹ��ͨ�����������͸���,ɾ��
a.copyfolder "foldertex","foledertext2"',overwrite���� false�����ǣ������ļ��лᱨ��true�Ḳ��
drivname=a.getdrivename("C:\Users\LX\OneDrive\�ĵ�\ͼƬ\�������\2021-07-09\�����ľ��� ���ռ� ��5��")
set driv=a.getdrive(drivname)
wscript.echo driv.filesystem
'getdrive(drivespec)�õ�drivespecָ������������Ӧ��drive����
'getdrivename(drivespec)�õ����ַ������ص�drivespecָ��������������
for intcode=65 to 90
strletter=chr(intcode)
if a.driveexists(strletter) then 
msgBox "���� "&strletter&" ������"
end if
next
set driv=a.drives
for each dri in driv
if dri.isready then
msg="������������Ϊ��"& dri.driveletter & vbcrlf
msg=msg & "�������ļ�ϵͳ�����ͣ�" &dri.filesystem & vbcrlf
msg=msg & "��������������:"& int(dri.totalsize/(1024*1024*1024)) & "G " & vbcrlf
msg=msg & "ʣ��ռ��������"&int(dri.freespace/(1024*1024*1024)) &"G "
msgbox msg
end if
next
end if

