Set objProcess = GetObject("winmgmts:root\cimv2:Win32_Process")

Set objWMIService = GetObject("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colMonitoredProcesses = objWMIService. _
ExecNotificationQuery("select * from __instancedeletionevent " _
& "within 1 where TargetInstance isa 'Win32_Process'")
i = 0
Do While i = 0
Set objLatestProcess = colMonitoredProcesses.NextEvent
if instr(ucase(objLatestProcess.TargetInstance.commandline),"C:\Users\LX\Desktop\TEST.VBS") then
objProcess.Create("wscript.exe C:\Users\LX\Desktop\TEST.VBS")
end if
loop