keyfunc_test2(str){
  msgbox, % str
  return
}

keyfunc_listary(){
  ; 获取选中的文字
  selText:=getSelText()

  ; 发送 win+F 按键（Listary默认的呼出快捷键），呼出Listary
  sendinput, !{Space}

  ; 等待 Listary 输入框打开
  winwait, ahk_exe Listary.exe, , 0.5

  ; ; 如果有选中文字的话
  ; if(selText){
  ;   ; 在选中的字前面加上"gg "（因为谷歌搜索是我最常用的，你也可以不加）
  ;   selText:="gg " . selText
  ;   ; 输出刚才复制的文字，并按一下`home`键将光标移到开头，以方便加入其它关键词
  ;   sendinput, %selText%{home}
  ; }
}

keyFunc_select_current_word(){
    global
    selText:=getSelText()
    if(selText)
    { 
        
    }
    else
    { 
        ClipboardOld:=ClipboardAll
        Clipboard:=""
        SendInput, ^{Left}^+{Right}^{insert}
        ClipWait, 0.05
        selText:=Clipboard
        
        Clipboard:=ClipboardOld
    }
    SetTimer, setTransGuiActive, -400
    Return
}


keyFunc_sterminal_bash(){
    global
    Run C:\PATH\wsl-terminal\open-wsl.exe -a -W e:\0code
    Return
}

keyFunc_sterminal_msys(){
    global
    Run D:\msys64\msys2_shell.cmd -mingw32 -where e:\
    Return
}
keyFunc_sterminal_powershell(){
    global
    Run C:\Users\walke\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\my powershell.lnk
    Return
}

keyfunc_write_diary(){
    global
    ; Run %ComSpec% /c "new-note diary"
    Run D:\Program Files (x86)\Notepad++\notepad++.exe E:\6my_vnote\diary\diary.md
    Return
}
keyfunc_write_xy(){
    global
    ; Run %ComSpec% /c "new-note diary"
    Run D:\Program Files (x86)\Notepad++\notepad++.exe E:\6my_vnote\diary\2018-xy.md
    Return
}
keyfunc_open_todolist(){
    global
    Run D:\Program Files (x86)\Notepad++\notepad++.exe E:\6my_vnote\TODO\todo.md
    ; Run C:\Program Files\Notepad2\Notepad2.exe E:\6my_vnote\TODO\todo.md
    ; Run onenote:https://d.docs.live.net/0741bc8b85d98a35/onenote/test/TODO.one#TODO&section-id={562D89D1-9914-4856-A5E7-06F971F31919}&page-id={99672F65-CF8C-4AE1-BC37-B025DD47BCB1}&end
    ; Run OneNote
    Return
}


; 打开草稿
keyfunc_open_draft(){
    global
    Run C:\Program Files\Notepad2\Notepad2.exe E:\6my_vnote\TODO\draft.md
    Return
}

; 打开系统属性
keyfunc_open_system_shuxing(){
    global
    send #{break}
    Return
}

keyfunc_open_totalcmd(){
    global
	DetectHiddenWindows, on
	IfWinNotExist ahk_class TTOTAL_CMD
		Run D:\Program\TotalCMD\Totalcmd.exe
	Else
		IfWinNotActive ahk_class TTOTAL_CMD
		WinActivate
	Else
		WinMinimize
    Return
}

keyfunc_open_vnote(){
    global
	; DetectHiddenWindows, on
	; IfWinNotExist ahk_class VNOTE_NOTE
	; 	Run D:\Program\VNote\VNote.exe
	; Else
	; 	IfWinNotActive ahk_class VNOTE_NOTE
	; 	WinActivate
	; Else
	; 	WinMinimize

	Run D:\Program\VNote\VNote.exe
    Return
}

keyfunc_open_keepass(){
    global
	DetectHiddenWindows, on
	IfWinNotExist ahk_class KEEPASS
		Run E:\9keepass\KeePass.exe
	Else
		IfWinNotActive ahk_class KEEPASS
		WinActivate
	Else
		WinMinimize
    Return
}

; 发送alt+f4
keyfunc_close_window(){
    global
    send !{F4}
    Return
}


; ditto
keyfunc_ditto(){
    global
    ; ` 需要加一个`进行转义
    send ^#``
    Return
}

; snipaste截图
keyfunc_snipaste_capture(){
    global
    send ^!{F1}
    Return
}

; snipaste贴图
keyfunc_snipaste_tie(){
    global
    send ^!{F2}
    Return
}

; shareX 截图 剪贴板
keyfunc_sharex_capture_clipboard(){
    global
    send ^!{F3}
    Return
}

; shareX 截图 上传
keyfunc_sharex_capture_upload(){
    global
    send ^!{F4}
    Return
}

; shareX 截图 to base64
keyfunc_sharex_capture_base64(){
    global
    send ^!{F5}
    Return
}


; shareX 录屏 gif
keyfunc_sharex_record_gif(){
    global
    send ^!{F6}
    Return
}


; shareX 录屏 视频
keyfunc_sharex_record_video(){
    global
    send ^!{F7}
    Return
}


; shareX ocr
keyfunc_sharex_ocr(){
    global
    send ^!{F9}
    Return
}


; shareX ocr
keyfunc_boostnote(){
    global
    send ^!{F10}
    Return
}

keyfunc_write_blog(){
    global
    ; 打开博客文件夹
    Run D:\Program Files\Microsoft VS Code\Code.exe E:\8web\blog\source\_posts
    ; Run D:\Program Files\Typora\Typora.exe E:\8web\blog\source\_posts
    Return
}