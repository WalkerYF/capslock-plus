keyfunc_aa(){
  msgbox, aa
}


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
    Run %ComSpec% /c "new-note diary"
    Return
}
keyfunc_open_todolist(){
    global
    Run C:\Program Files\Notepad2\Notepad2.exe E:\0todo\todo.md
    Return
}


; 打开草稿
keyfunc_open_draft(){
    global
    Run C:\Program Files\Notepad2\Notepad2.exe E:\0inbox\draft.md
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


; 发送alt+f4
keyfunc_close_window(){
    global
    send !{F4}
    Return
}
