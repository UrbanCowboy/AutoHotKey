#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;The ABOVE CODE ^^^ was automaticlaly generated when I made a new .ahk document. I don't know how essential it is.

; VIDEO EXPLANATION:   https://www.youtube.com/watch?v=eZIaBsybO6Y

#SingleInstance force ;only one instance of this script may run at a time!
#IfWinActive ahk_exe Adobe Premiere Pro.exe
;---EVERYTHING BELOW THIS LINE WILL ONLY WORK INSIDE PREMIERE PRO!


;<fake mouse "click" on effects panel search bar >
;I don't use this one anymore:
;control alt f
;^!f::
;ControlFocus, Edit1, ahk_class Premiere Pro
;Sleep, 10
;return


;<<<<>>>>
;THIS IS THE FUNCTION FOR TYPING STUFF INTO THE SEARCH BAR
;but it doesn't apply them to the clips
;effectsPanelType(item)
;{
;SetKeyDelay, 0
;ControlFocus, Edit2, ahk_class Premiere Pro ;this is the effects panel, according to windowspy
;sleep 10
;send {tab}
;sleep 10
;send +{tab}
;sleep 10
;Send +{backspace}
;;Sleep, 10
;Send %item%
;;now this next part re-selects the field in case you want to type anything different
;sleep 5
;send {tab}
;sleep 5
;send +{tab}
;}

;USING THE FUNCTION:
;^!+f::effectsPanelType("") ;-------Types nothing in. So it CLEARS the effects panel search bar
;^!+p::effectsPanelType("presets")
;^!+w::effectsPanelType("warp")
;mButton::effectsPanelType("presets") ; this is super useful. Using the scroll wheel click as an assignable button...
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



;;;;;;;;;;;;;;;FUNCTION FOR DIRECTLY APPLYING A PRESET EFFECT TO A CLIP!;;;;;;;;;;;;;;;;;;;;
;This is the one I actually use!!
preset(item)
{
BlockInput, SendAndMouse
BlockInput, On
;Send ^!+`
;Sleep 10
;Send ^!+7
;Sleep 10
SetKeyDelay, 0
MouseGetPos, xpos, ypos ;-----------------------stores the cursor's current coordinates at X%xpos% Y%ypos%
ControlGetPos, X, Y, Width, Height, Edit3, ahk_class Premiere Pro ;;;highlights Premier's effects panel search bar (info gotten from window spy)
MouseMove, X+Width+10, Y+Height/2, 0
sleep 5
MouseClick, left, , , 1 ;------------------------clicks on X
MouseMove, X-25, Y+10, 0
sleep 5
MouseClick, left, , , 1 ;----------------------clicks on Q icon to prepare for deletion
; sleep 5
; Send +{backspace} ;----------------------------deletes shit
; sleep 5
MouseClick, left, , , 1
sleep 5
Send %item%
sleep 30
MouseMove, 52, 140, 0, R ;-----------------------moves cursor down and directly onto the effect's icon
MouseGetPos, iconX, iconY
ControlGetPos, , , www, hhh, DroverLord - Window Class16, ahk_class Premiere Pro
MouseMove, www/3, hhh/2, 0, R ;-----------------clicks in about the CENTER of the Effects panel. This clears the displayed presets from any duplication errors
MouseClick, left, , , 1
; msgbox hi bitch
sleep 10
MouseMove, iconX, iconY, 0 ;--------------------moves cursor BACK onto the effect's icon

sleep 35
MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;---drags this effect to the cursor's pervious coordinates, which should be above a clip.
sleep 10
Send ^+!0 ;-------------------------------------returns focus to the timeline. doesn't work for multiple timelines :(
MouseClick, left, , , 1 ;------------------------returns focus to the timeline.
BlockInput, off
}

;That's the end of the function. Now we make shortcuts to CALL that function, each with a different parameter!

;All of these refer to presets I have already created and named in Premiere
;note that using ALT for these is kind of stupid... they can interfere with menus.
;ALT C, for example, will always open the CLIP menu. So I can't use that anywhere.

^!+o::preset("crop")

;Auto select Dip to Black in Premiere
^!+d::
BlockInput, SendAndMouse
BlockInput, On
;Send ^!+`
;Sleep 10
;Send ^!+7
;Sleep 10
SetKeyDelay, 0
MouseGetPos, xpos, ypos ;-----------------------stores the cursor's current coordinates at X%xpos% Y%ypos%
ControlGetPos, X, Y, Width, Height, Edit3, ahk_class Premiere Pro ;;;highlights Premier's effects panel search bar (info gotten from window spy)
MouseMove, X+Width+10, Y+Height/2, 0
sleep 5
MouseClick, left, , , 1 ;------------------------clicks on X
MouseMove, X-25, Y+10, 0
sleep 5
; MouseClick, left, , , 1 ;----------------------clicks on Q icon to prepare for deletion
; sleep 5
; Send +{backspace} ;----------------------------deletes shit
; sleep 5
MouseClick, left, , , 1
sleep 5
Send Dip to Black
sleep 30
MouseMove, 52, 160, 0, R ;-----------------------moves cursor down and directly onto the effect's icon
MouseGetPos, iconX, iconY
ControlGetPos, , , www, hhh, DroverLord - Window Class16, ahk_class Premiere Pro
MouseMove, www/3, hhh/2, 0, R ;-----------------clicks in about the CENTER of the Effects panel. This clears the displayed presets from any duplication errors
MouseClick, left, , , 1
; msgbox hi bitch
sleep 10
MouseMove, iconX, iconY, 0 ;--------------------moves cursor BACK onto the effect's icon

sleep 35
MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;---drags this effect to the cursor's pervious coordinates, which should be above a clip.
sleep 10
Send ^+!0 ;-------------------------------------returns focus to the timeline. doesn't work for multiple timelines :(
MouseClick, left, , , 1 ;------------------------returns focus to the timeline.
BlockInput, off
Return

;Auto select Cross Dissolve in Premiere
^!+s::
BlockInput, SendAndMouse
BlockInput, On
;Send ^!+`
;Sleep 10
;Send ^!+7
;Sleep 10
SetKeyDelay, 0
MouseGetPos, xpos, ypos ;-----------------------stores the cursor's current coordinates at X%xpos% Y%ypos%
ControlGetPos, X, Y, Width, Height, Edit3, ahk_class Premiere Pro ;;;highlights Premier's effects panel search bar (info gotten from window spy)
MouseMove, X+Width+10, Y+Height/2, 0
sleep 5
MouseClick, left, , , 1 ;------------------------clicks on X
MouseMove, X-25, Y+10, 0
sleep 5
; MouseClick, left, , , 1 ;----------------------clicks on Q icon to prepare for deletion
; sleep 5
; Send +{backspace} ;----------------------------deletes shit
; sleep 5
MouseClick, left, , , 1
sleep 5
Send Cross Dissolve
sleep 30
MouseMove, 52, 160, 0, R ;-----------------------moves cursor down and directly onto the effect's icon
MouseGetPos, iconX, iconY
ControlGetPos, , , www, hhh, DroverLord - Window Class16, ahk_class Premiere Pro
MouseMove, www/3, hhh/2, 0, R ;-----------------clicks in about the CENTER of the Effects panel. This clears the displayed presets from any duplication errors
MouseClick, left, , , 1
; msgbox hi bitch
sleep 10
MouseMove, iconX, iconY, 0 ;--------------------moves cursor BACK onto the effect's icon

sleep 35
MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;---drags this effect to the cursor's pervious coordinates, which should be above a clip.
sleep 10
Send ^+!0 ;-------------------------------------returns focus to the timeline. doesn't work for multiple timelines :(
MouseClick, left, , , 1 ;------------------------returns focus to the timeline.
BlockInput, off
Return


;!u::preset("blur 25")

;^h::preset("Lumetri Color BLANK")
;^g::preset("Lumetri shadows up")
;^b::preset("Lumetri BRIGHT")


;!r::preset("fill right")
;!l::preset("2.4 limiter")
;!]::preset("DeHummer Preset")

;^!w::preset("Warp Stabilizer Preset")

;using transform effect presets
;^+down::preset("pan down")
;^+up::preset("pan up")
;^+left::preset("pan left")
;^+right::preset("pan right")

;;---I have assigned most of these to my macro keys on my keyboard, so it's just ONE KEYSTROKE to apply them!

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


#IfWinActive