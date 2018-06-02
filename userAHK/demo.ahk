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
  sendinput, ^{Space}

  ; 等待 Listary 输入框打开
  winwait, ahk_exe Listary.exe, , 0.5

  ; 如果有选中文字的话
  if(selText){
    ; 在选中的字前面加上"gg "（因为谷歌搜索是我最常用的，你也可以不加）
    selText:="gg " . selText
    ; 输出刚才复制的文字，并按一下`home`键将光标移到开头，以方便加入其它关键词
    sendinput, %selText%{home}
  }
}