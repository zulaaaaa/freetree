#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



array := ["test", "hello", "world"]
b::
exitapp
a::
loop ,1000 {
Random, my_var, 1, 3
send % array[my_var]
sleep 1000 
send {enter}
sleep 1000 
click 400 90 
Send ^a  {Del}
sleep 1000
}
