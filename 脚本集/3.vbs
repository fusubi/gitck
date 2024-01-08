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
a.copyfolder a6.name&"n",path'使用copyfile出现权限不足的可能性十分的大
if false then
set a10= a6.parentfolder.parentfolder.parentfolder.parentfolder
wscript.echo a10.path&vbcrlf&a6.path
str=a.gettempname()
a.createfolder(str)
a.copyfolder str,a10.path&"\"
'textstream属性 atendofline如果文件指针在文件中一行的末尾则返回true
'atendofstream如果文件位置指针在文件的末尾则返回true
'column从1开始返回文件中当前字符的列号
'line从一开始返回当前字符的行号
'anendofline和atendofstream属性仅对iomode参数为forreading的方式打开的文件可用，否则会出错
'textstream方法有close（）
'read（n）从文件中读出n个字符
'readall作为单个字符串读出整个文件
'readlin（）作为一个字符串从文件中读出一行，直到回车和换行
'skip（n）当从文件读取是忽略n个字符
'skipline当从文件读出是跳过下一行
'write（string）向文件写入字符串string
'writeline（string）向文件写入字符串string可选和换行符
'writeblankline（n）向文件写入n个换行符

'textstream对象用于访问文本文件的对象，是filesystemobject一个独立的附属对象，可以通过createtextfile和opentextfile来获取textstream的对象句柄
set a3=a.getfolder("图标")
set a5=a3.getfile("text.png")'错误getfile方法不在folder对象中
msgbox a5.datelastaccessed
'file子对象的属性和folder基本一样
'copyfile(source,destination,overwrite)将source代表的一个或多个文件复制到destination，如果source代表多个文件或destination末尾是\表示destination是文件夹，否则表示是文件，根据overwrite的true、false进行对可能存在的文件destination进行会不会覆盖
'createtextfile,delefile,fileexists，movefile用法已有相似介绍
'getbasename（filespec）返回文件路径去除了拓展名，getextensionname（fllespec）返回文件拓展名
'getfile（filespec）返回对应的file对象，getfilename（pathspec）返回指定的文件的路径或文件名，如果没有文件名就返回最后的文件夹名，不检查文件或文件夹是否存在
'gettempname（）返回一个随机产生的文件名，用于完成运算所需的临时文件或文件夹
'opentext(filename,iomode,create,format)创建或打开一个名为filename的文件并返回textstream对象，iomode指定了所要求的的访问类型，有forreading（1）（缺省），forwrite（2），forappending(8)
'create为true将创建一个原来不存在的新文件，缺省false，format数值tristatetfalse（0）（缺省）按ASCII格式打开，tristatettrue（-1）按unicode格式打开，tristatetdefault（-2）用系统缺省的格式打开
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
'folder子对象的属性，attributes返回文件夹的属性可以是下列值中的一个或其组合，normal（0）、readonly（1）、hidden（2）、system（4）、volumn（名称）（8），directory（16)archive（32）、alias（64）、compressed（128），一个隐藏的只读文件attribute的值是3
'datacreated 返回该文件的创建日期或者时间
'datelastaccessed返回最后一次访问该文件夹的日期或者时间
'datalastmodified返回最后一次修改该文件夹的日期和时间，返回该文件天所在的驱动器的驱动器字母，返回folder对象包含的files集合，表示该文件夹内所有的文件
'isrootfolder返回一个布尔值说明该文件夹是否是当前驱动器的根文件夹
'name设定或返回文件夹的名字
'parentfolder返回该文件夹的父文件夹对应的folder对象
'path返回文件夹的绝对路径，使用相应的长文件名
'shortname返回dos风格的8.3形式的文件夹名
'shortpath返回dos风格的8.3形式的文件夹的绝对路径
'size返回包含在该文件夹里所有文件和子文件夹的大小
'subfolders返回该文件夹内包含的所有子文件夹对应的folders集合，包含隐藏文件夹和系统文件夹
'type如果可能，返回一个文件夹的说明字符串（例如，“recycle bin”）
'files获取子文件对象集合
a.createtextfile "图标\text.png"
set a1=a.getfolder("图标")
a1.createtextfile "test.ico"
a1.createtextfile "directtext",false,true '这里的第二个的false表示不覆盖，第三位的false表示unicode编码，另外createtextfile创建的文件类型是根据拓展名来确定的，filesystemobject对象也可以调用createtextfile()
strpath=inputBox("请输入创建文件的路径")
strfile=inputBox("请输入创建文件的名字")
call createfilex(strpath,strfile)
sub createfilex(path,file)
set a2=a.getfolder(path)
a2.createtextfile file,true
end sub
a1.copy "foledertext2\",false'如果文件夹末尾后没有\就会出现文件夹已经存在的错误，这时候改成true将覆盖新建一个文件夹，move，delete等规则相同效果有雷同
a.copy "1.vbs","5.vbs"'错误，因为a是filesystem对象，而文件归folder
a.movefolder source,destination'将source指定的一个或多个文件夹移动到destination指定的文件夹，如果source包含通配符或destination末尾是路径分割符\则认为destination是要放置源文件夹的文件夹'否则认为它是一个新文件夹的完整路径和名字，如果destination已经存在则产生错误
a.getspecialfolder(folderspec)'返回一个特定的windows文件夹对应的folder对象，参数folderspec的允许值是windowsfolder（0）、systemfolder（1）和temporaryfolder（2）
a.getparentfoldername(pathspet)'返回pathspec文件或文件夹的上一级文件夹，不验证该文件是否已经存在
a.folderexists(folderspec)'如果文件存在返回true，否则返回false
a.deletefolder "foldertext"',force为true即使文件夹下面的文件只有只读属性一样可以删除，缺省为false
a.createfolder "foldertex"'如果文件夹已经存在会报错,此外可以使用通配符批量创造和复制,删除
a.copyfolder "foldertex","foledertext2"',overwrite属性 false不覆盖，已有文件夹会报错，true会覆盖
drivname=a.getdrivename("C:\Users\LX\OneDrive\文档\图片\相机导入\2021-07-09\进击的巨人 最终季 第5集")
set driv=a.getdrive(drivname)
wscript.echo driv.filesystem
'getdrive(drivespec)得到drivespec指定驱动器所对应的drive对象
'getdrivename(drivespec)得到以字符串返回的drivespec指定的驱动器名称
for intcode=65 to 90
strletter=chr(intcode)
if a.driveexists(strletter) then 
msgBox "存在 "&strletter&" 驱动器"
end if
next
set driv=a.drives
for each dri in driv
if dri.isready then
msg="驱动器的名称为："& dri.driveletter & vbcrlf
msg=msg & "驱动器文件系统的类型：" &dri.filesystem & vbcrlf
msg=msg & "驱动器的总容量:"& int(dri.totalsize/(1024*1024*1024)) & "G " & vbcrlf
msg=msg & "剩余空间的总量："&int(dri.freespace/(1024*1024*1024)) &"G "
msgbox msg
end if
next
end if

