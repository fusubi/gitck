set a=createobject("wscript.shell")
a.run"cmd"
wscript.sleep(1000)
a.sendkeys"+"
a.sendkeys"powershell"
wscript.sleep(1000)
a.sendkeys"{enter}"
wscript.sleep(1000)
a.sendkeys"Start-Process powershell -Verb runAs{enter}"
wscript.sleep(1000)
a.sendkeys"{enter}"

