@echo off

:: Created by: Shawn Brink
:: http://www.sevenforums.com
:: Tutorial:  http://www.sevenforums.com/tutorials/92758-windows-explorer-auto-arrange-disable.html


:: To reset all folders to default folder views
Reg Delete "HKCU\Software\Microsoft\Windows\Shell\BagMRU" /F
Reg Delete "HKCU\Software\Microsoft\Windows\Shell\Bags" /F

Reg Delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags" /F
Reg Delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /F

Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /F

Reg Delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags" /F
Reg Delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F



:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe