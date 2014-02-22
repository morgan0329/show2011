@ECHO off

CD /D %~dp0
SET current=%~dp0

SET folderList=%current%folderList.txt

FOR /F "tokens=1,2,3,4* delims=," %%A IN (%folderList%) DO (
  dir %current%images\%%A\ /A:A /B>%current%%%A_ImageList.txt 
)