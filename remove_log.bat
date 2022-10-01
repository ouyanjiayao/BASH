@echo off
set path=E:\3\      
set DaysAgo=7               
forfiles /p %path% /s /m *.log /d -%DaysAgo%  /c "cmd /c del /f /q /a @path"