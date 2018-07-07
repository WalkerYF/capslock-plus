
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 写日记
^!q::Run %ComSpec% /c "new-note diary"

; 快速笔记
^!n::Run %ComSpec% /c "new-note quick-note"

; 上面用到了将命令发送到cmd的技巧

; 打开终端，默认在工作code目录
^!1::Run C:\PATH\wsl-terminal\open-wsl.exe -a -W e:\0code

; 打开msys终端，默认工作在e目录下
^!2::Run D:\msys64\msys2_shell.cmd -mingw32 -where e:\

; 打开powershell终端
^!3::Run C:\Users\walke\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\my powershell.lnk

; 打开todolist
;^!d::Run D:\Program Files\Typora\Typora.exe E:\0todo\todo.md
^!d::Run C:\Program Files\Notepad2\Notepad2.exe E:\0todo\todo.md

; 打开draft.md
;^!e::Run D:\Program Files (x86)\Notepad++\notepad++.exe E:\0inbox\draft.md
^!e::Run C:\Program Files\Notepad2\Notepad2.exe E:\0inbox\draft.md


; 打开博客文件夹
^!p::Run D:\Program Files\Typora\Typora.exe E:\8web\blog\source\_posts


#t::
	DetectHiddenWindows, on
	IfWinNotExist ahk_class TTOTAL_CMD
		Run D:\Program\TotalCMD\Totalcmd.exe
	Else
		IfWinNotActive ahk_class TTOTAL_CMD
		WinActivate
	Else
		WinMinimize
Return

;#y::
;	DetectHiddenWindows, on
;	IfWinNotExist ahk_class tagLyst
;		Run D:\Program\tagLyst\run\tagLyst.exe
;	Else
;		IfWinNotActive ahk_class tagLyst
;		WinActivate
;	Else
;		Send !{F4}
;Return

#p::send #{break}