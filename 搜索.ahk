/*
谷歌-Alt-1
谷歌学术-Alt-2
百度-Alt-3
Github-code Alt-4
DuckDuckgo Alt-d
zhihu Alt-q
百度查词 Alt-f
pot 翻译 Alt-s
*/
!1::
f = %clipboard%
Send ^c
run, https://www.google.com/search?q=%clipboard%
clipboard = %f%
return

!2::
f = %clipboard%
Send ^c
run, https://scholar.google.com/scholar?hl=en&q=%clipboard%
clipboard = %f%
return

!3::
f = %clipboard%
Send ^c
run, http://www.baidu.com/s?wd=%clipboard%
clipboard = %f%
return

!4::
f = %clipboard%
Send ^c
run, https://github.com/search?type=code&q=%clipboard%
clipboard = %f%
return

!d::
f = %clipboard%
Send ^c
run, https://duckduckgo.com/?q=%clipboard%
clipboard = %f%
return

!q::
f = %clipboard%
Send ^c
run, https://www.zhihu.com/search?type=content&q=%clipboard%
clipboard = %f%
return

!f::
f = %clipboard%
Send ^c
run, https://fanyi.baidu.com/#en/zh/%clipboard%
clipboard = %f%
return

!s::
f = %clipboard%
Send ^c
httpObj := ComObjCreate("WinHttp.WinHttpRequest.5.1")
httpObj.Open("POST", "http://127.0.0.1:60828/", true)
httpObj.Send(clipboard)
clipboard = %f%
return
