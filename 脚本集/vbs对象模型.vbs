Option Explicit

Const HKEY_CLASSES_ROOT = &H80000000
Dim arrProgID, strProgID, strCLSID
Dim objReg, objFso, objFile, objShell

Set objReg = GetObject("winmgmts:\\.\root\default:StdRegProv")
Set objFso = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("WScript.Shell")

Set objFile = objFso.OpenTextFile("ProgID.txt", 2, True)

'By Demon
'http://demon.tw

objReg.EnumKey HKEY_CLASSES_ROOT, "", arrProgID
For Each strProgID In arrProgID
 If GetCLSID(strProgID, strCLSID) Then
  If IsProgrammable(strCLSID) Or IsAutomationObject(strCLSID) Then
   objFile.WriteLine strProgID
  End If
 End If
Next
objShell.Run "ProgID.txt"

Function RegKeyExists(hKey, strSubKey)
 Dim a, n
 n = objReg.EnumKey(hKey, strSubKey, a)
 If n = 0 Then
  RegKeyExists = True
 Else
  RegKeyExists = False
 End If
End Function

Function IsAutomationObject(strCLSID)
 Dim strSubKey
 IsAutomationObject = False
 strSubKey = "CLSID\" & strCLSID & "\Implemented Categories"
 If RegKeyExists(HKEY_CLASSES_ROOT, strSubKey) Then
  strSubKey = strSubKey & "{40FC6ED5-2438-11CF-A3DB-080036F12502}"
  If RegKeyExists(HKEY_CLASSES_ROOT, strSubKey) Then
   IsAutomationObject = True
  End If
 End If
End Function

Function IsProgrammable(strCLSID)
 IsProgrammable = RegKeyExists(HKEY_CLASSES_ROOT, _
  "CLSID\" & strCLSID & "\Programmable")
End Function

Function GetCLSID(strProgID, strCLSID)
 Dim s
 GetCLSID = False
 If RegKeyExists(HKEY_CLASSES_ROOT, strProgID & "\CLSID") Then
  objReg.GetStringValue HKEY_CLASSES_ROOT, strProgID & "\CLSID", "", s
  If Not IsNull(s) Then
   strCLSID = s
   GetCLSID = True
  End If
 End If
End Function