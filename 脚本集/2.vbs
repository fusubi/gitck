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
'strCommand Ҫ���е��������ַ���������Ҫ���ݵ���ִ���ļ������в���
'intWindowStyle 0����һ�����ڲ�������һ������1�����ʾ���ڣ�������ڴ�����С�������״̬��ϵͳ���仹ԭ��ԭʼ��С��λ�ã���һ����ʾ�ô����ǣ�Ӧ�ó���Ӧָ���˱�־
'2����ڲ�������ʾΪ��С������3����ڲ�������ʾΪ��󻯴���4������Ĵ��ڴ�С��λ����ʾ���ڣ�����ڱ��ֻ״̬
'5����ڲ�����ǰ��С��λ����ʾ��6��С��ָ�����ڣ�������z˳�򼤻���һ����������7��������ʾΪ��С�����ڣ�����ڱ��ֻ״̬
'8��������ʾΪ��ǰ״̬������ڱ��ֻ״̬9�����ʾ���ڣ�������ڴ�����С�������״̬��ϵͳ���仹ԭ��ԭʼ��С��λ�ã���ԭ��С������ʱ��Ӧ�ó���Ӧָ���˱�־
'10��������Ӧ�ó���ĳ���״̬��������ʾ״̬'
'bWaitOnReturn true��ִ��������ż���ִ�нű���false�������������������0������ִ�нű�
f.run "notepad",3,true
