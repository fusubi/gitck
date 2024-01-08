set b=wscript.createobject("scripting.filesystemobject")
set c=createobject("scripting.dictionary")
set d=createobject("wscript.shell")
set e=createobject("wscript.network")
set f=createobject("wscript.shell")
v=f.regwrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ll\aaa","okkkkk","REG_SZ")
wscript.echo v
v=f.regread("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ll\aaa")
wscript.echo v
v=f.regdelete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ll\aaa")
wscript.echo v
v=f.regwrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ll\aaa","ok","REG_SZ")

f.run "notepad"
wscript.sleep(10000)
'object.run(strcommand,[intWindowsStyle],[bWaitOnRetuen])
'strCommand 要运行的命令行字符串，包括要传递到可执行文件的所有参数
'intWindowStyle 0隐藏一个窗口并激活另一个窗口1激活并显示窗口，如果窗口处于最小化或最大化状态则系统将其还原到原始大小和位置，第一次显示该窗口是，应用程序应指定此标志
'2激活窗口并将其显示为最小化窗口3激活窗口并将其显示为最大化窗口4按最近的窗口大小和位置显示窗口，活动窗口保持活动状态
'5激活窗口并按当前大小和位置显示他6最小化指定窗口，并按照z顺序激活下一个顶部窗口7将窗口显示为最小化窗口，活动窗口保持活动状态
'8将窗口显示为当前状态，活动窗口保持活动状态9激活并显示窗口，如果窗口处于最小化或最大化状态则系统将其还原到原始大小和位置，还原最小化窗口时，应用程序应指定此标志
'10根据启动应用程序的程序状态来设置显示状态'
'bWaitOnReturn true在执行完程序后才继续执行脚本，false在启动程序后立即返回0即继续执行脚本
f.run "notepad",3,true
