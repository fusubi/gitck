set a=createobject("scripting.dictionary")
a.add "a","1"
a.add "b","2"
a.add "c","3"
a.item("a")="1.1"
a.key("a")="a.a"
msg=a.count&vbcrlf
if a.exists("a") then 
msg=msg&"key=a is exist"&vbcrlf
end if
for each k in a.keys

msg= msg&k&"="&a(k)&vbcrlf

next
b=a.keys()
c=a.items()
for each k in b
msg=msg&" "&k&" "
next 
msg=msg&vbcrlf
for each k in c
msg=msg&" "&k&" "
next 
msgbox msg
a.remove("a.a")
a.removeall

'Abs 函数：返回数的绝对值。

'Array 函数：返回含有数组的变体。
'Asc 函数：返回字符串首字母的 ANSI 字符码。

'Atn 函数：返回数值的反正切。

'CBool 函数：返回已被转换为 Boolean 子类型的变体的表达式。

'CByte 函数：返回已被转换为字节子类型的变体的表达式。

'CCur 函数：返回已被转换为货币子类型的变体的表达式。

'CDate 函数：返回已被转换为日期子类型的变体的表达式。

'CDbl 函数：返回已被转换为双精度子类型的变体的表达式。

'Chr 函数：返回与指定的 ANSI 字符码相关的字符。

'CInt 函数：返回已被转换为整形子类型的变体的表达式。

'CLng 函数；返回已被转换为Long子类型的变体的表达式。

'Cos 函数：返回角度的余弦。

'CreateObject 函数：创建并返回对“自动”对象的引用。

'CSng 函数：返回已被转换为单精度子类型的变体的表达式。

'CStr 函数：返回已被转换为字符串子类型的变体的表达式。

'Date 函数：返回当前系统日期。

'DateAdd 函数：返回的日期已经加上了指定的时间间隔。

'DateDiff 函数：返回两个日期之间的间隔。

'DatePart 函数：返回给定日期的指定部分。

'DateSerial 函数：返回指定年月日的日期子类型的变体。

'Datevalue 函数：返回日期子类型的变体。

'Day 函数：返回日期，取值范围为 1 至 31。

'Eval 函数：计算表达式并返回结果。

'Exp 函数：返回 e （自然对数的底） 的多少次方。

'Filter 函数：根据指定的筛选条件,返回含有字符串数组子集的、下限为 0 的数组。

'Fix 函数：返回数的整数部分。

'FormatCurrency 函数：返回的表达式为货币值格式，其货币符号采用系统控制面板中定义的。

'FormatDateTime 函数：返回的表达式为日期和时间格式。

'FormatNumber 函数：返回的表达式为数字格式。

'FormatPercent 函数：返回的表达式为百分数（乘以 100）格式，后面有 % 符号。

'GetObject 函数：返回从文件对“自动”对象的引用。

'GetRef 函数：返回对能够绑定到一事件的过程的引用。

'Hex 函数：返回一字符串，代表一个数的十六进制值。

'Hour 函数：返回表示钟点的数字，取值范围为 0 至 23。

'InputBox 函数：在对话框中显式一提示，等待用户输入文本或单击按钮，并返回文本框的内容。

'InStr 函数：返回一个字符串在另一个字符串中首次出现的位置。

'InStrRev 函数；返回一个字符串在另一个字符串中出现的位置，但是从字符串的尾部算起。

 

'VBS内置函数之二

 

'Int 函数：返回数的整数部分。

'IsArray 函数：返回 Boolean 值，反映变量是否为数组。

'IsDate 函数：返回 Boolean 值，反映表达式能否转换为日期。

'IsEmpty 函数：返回 Boolean 值，反映变量是否已被初始化。

'无效数据(Null)。

'IsNumeric 函数：返回 Boolean 值，反映表达式能否转换为数字。

'IsObject 函数：返回 Boolean 值，反映表达式是否引用了有效的“自动”对象。

'Join 函数：返回通过连接许多含有数组的子串而创建的字符串。

'LBound 函数；返回指定维数数组的最小有效下标。

'LCase 函数：返回的字符串已被转换为小写字母。

'Left 函数：返回字符串最左边的指定数量的字符。

'Len 函数：返回字符串中的字符数或存储变量所需的字节数。

'LoadPicture 函数：返回图片对象。只用于 32 位平台。

'Log 函数：返回数的自然对数。

'LTrim 函数；返回去掉前导空格的字符串。

'Mid 函数：从字符串中返回指定数量的字符。

'Minute 函数：返回分钟数，取值范围为 0 至 59。

'Month 函数：返回表示月份的数，取值范围为 1 至 12。

'MonthName 函数：返回表示月份的字符串。

'MsgBox 函数：在对话框中显示消息，等待用户单击按钮，并返回表示用户所击按钮的数值。

'Now 函数：返回计算机的当前系统日期和时间。

'Oct 函数：返回表示该数八进制数值的字符串。

'Replace 函数：返回一字符串，其中指定的子串已被另一个子串替换了规定的次数。

'RGB 函数：返回代表 RGB 颜色值的数字。

'Right 函数：返回字符串最右边的指定数量的字符。

'Rnd 函数：返回随机数。

'Round 函数：返回指定位数、四舍五入的数。

'RTrim 函数：返回去掉尾部空格的字符串副本。

'ScriptEngine 函数：返回反映使用中的脚本语言的字符串。

'ScriptEngineBuildVersion 函数：返回使用中的脚本引擎的编译版本号。

'ScriptEngineMajorVersion 函数：返回使用中的脚本引擎的主版本号。

'ScriptEngineMinorVersion 函数：返回使用中的脚本引擎的次版本号。

'Second 函数：返回秒数，取值范围为 0 至 59。

'VBS内置函数之三

 

 

'Sgn 函数：返回反映数的符号的整数。

'Sin 函数：返回角度的正弦值。

'Space 函数：返回由指定数量的空格组成的字符串。

'Split 函数：返回下限为 0 的、由指定数量的子串组成的一维数组。

'Sqr 函数：返回数的平方根。

'StrComp 函数：返回反映字符串比较结果的数值。

'String 函数：返回指定长度的重复字符串。

'StrReverse 函数：返回一字符串，其中字符的顺序与指定的字符串中的顺序相反。

'Tan 函数：返回角度的正切值。

'Time 函数：返回表示当前系统时间的“日期”子类型的“变体”。

'Timer 函数：返回时经子夜 12：00 AM 后的秒数。

'TimeSerial 函数：返回含有指定时分秒时间的日期子类型的变体。

'Timevalue 函数：返回含有时间的日期子类型的变体。

'Trim 函数：返回去掉前导空格或尾部空格的字符串副本。

'TypeName 函数：返回一字符串，它提供了关于变量的变体子类型信息。

'UBound 函数：返回指定维数数组的最大有效下标。

'UCase 函数：返回的字符串已经被转换为大写字母。

'VarType 函数：返回标识变体子类型的数值。

'Weekday 函数：返回表示星期几的数值。

'WeekdayName 函数：返回表示星期几的字符串。

'Year 函数：返回表示年份的数值。

