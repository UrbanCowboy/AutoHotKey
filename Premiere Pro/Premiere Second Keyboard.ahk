#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ;Makes sure that only one version of this script runs at a time
SetTitleMatchMode, 3 ;Sets the title match mode to match exactly the application that is open.



;-------------------------------------NOTES-------------------------------------
; Introduction to AutoHotKey and a list of keys can be found here https://autohotkey.com/docs/AutoHotkey.htm
; # = Windows Key
; ! = Alt Key
; ^ = Ctrl Key
; + = Shift
; 
; 
; -----------------------------------End Notes-----------------------------------


#If WinActive("ahk_exe Adobe Premiere Pro.exe") and getKeyState("F23", "P") ;The keys on the second keyboard are wrapped with F23. This checks to make sure that F23 is pressed before running the below scripts.
F23::return

	Space:: ;Clicks the left click when space on the second keyboard is pressed.
		Click
	Return
	
	d:: ;Automatically applys Dip to Black Effect to Clip underneath the current mouse position
		BlockInput, SendAndMouse
		BlockInput, On
		SetKeyDelay, 0
		MouseGetPos, xpos, ypos ;stores the cursor's current coordinates at X%xpos% Y%ypos%
		ControlGetPos, X, Y, Width, Height, Edit3, ahk_class Premiere Pro ;;;highlights Premier's effects panel search bar (info gotten from window spy)
		MouseMove, X+Width+10, Y+Height/2, 0
		sleep 5
		MouseClick, left, , , 1 ;clicks on X
		MouseMove, X-25, Y+10, 0
		sleep 5
		MouseClick, left, , , 1
		sleep 5
		Send Dip to Black
		sleep 30
		MouseMove, 52, 160, 0, R ;moves cursor down and directly onto the effect's icon
		MouseGetPos, iconX, iconY
		ControlGetPos, , , www, hhh, DroverLord - Window Class16, ahk_class Premiere Pro
		MouseMove, www/3, hhh/2, 0, R ;clicks in about the CENTER of the Effects panel. This clears the displayed presets from any duplication errors
		MouseClick, left, , , 1
		sleep 10
		MouseMove, iconX, iconY, 0 ;moves cursor BACK onto the effect's icon
		sleep 35
		MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;drags this effect to the cursor's pervious coordinates, which should be above a clip.
		sleep 10
		Send ^+!0 ;returns focus to the timeline. doesn't work for multiple timelines :(
		MouseClick, left, , , 1 ;returns focus to the timeline.
		BlockInput, off
	Return
	
	x:: ;Automatically applys Cross Dissolve Effect to Clip underneath the current Mouse Position
		BlockInput, SendAndMouse
		BlockInput, On
		SetKeyDelay, 0
		MouseGetPos, xpos, ypos ;stores the cursor's current coordinates at X%xpos% Y%ypos%
		ControlGetPos, X, Y, Width, Height, Edit3, ahk_class Premiere Pro ;;;highlights Premier's effects panel search bar (info gotten from window spy)
		MouseMove, X+Width+10, Y+Height/2, 0
		sleep 5
		MouseClick, left, , , 1 ;clicks on X
		MouseMove, X-25, Y+10, 0
		sleep 5
		MouseClick, left, , , 1
		sleep 5
		Send Cross Dissolve
		sleep 30
		MouseMove, 52, 160, 0, R ;moves cursor down and directly onto the effect's icon
		MouseGetPos, iconX, iconY
		ControlGetPos, , , www, hhh, DroverLord - Window Class16, ahk_class Premiere Pro
		MouseMove, www/3, hhh/2, 0, R ;clicks in about the CENTER of the Effects panel. This clears the displayed presets from any duplication errors
		MouseClick, left, , , 1
		sleep 10
		MouseMove, iconX, iconY, 0 ;moves cursor BACK onto the effect's icon
		sleep 35
		MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;drags this effect to the cursor's pervious coordinates, which should be above a clip.
		sleep 10
		Send ^+!0 ;returns focus to the timeline. doesn't work for multiple timelines :(
		MouseClick, left, , , 1 ;returns focus to the timeline.
		BlockInput, off
	Return
	
	c:: ;Automatically applys Crop Effect to Clip underneath the current Mouse Position
		BlockInput, SendAndMouse
		BlockInput, On
		SetKeyDelay, 0
		MouseGetPos, xpos, ypos ;stores the cursor's current coordinates at X%xpos% Y%ypos%
		ControlGetPos, X, Y, Width, Height, Edit3, ahk_class Premiere Pro ;;;highlights Premier's effects panel search bar (info gotten from window spy)
		MouseMove, X+Width+10, Y+Height/2, 0
		sleep 5
		MouseClick, left, , , 1 ;clicks on X
		MouseMove, X-25, Y+10, 0
		sleep 5
		MouseClick, left, , , 1 ;clicks on Q icon to prepare for deletion
		MouseClick, left, , , 1
		sleep 5
		Send Crop
		sleep 30
		MouseMove, 52, 140, 0, R ;moves cursor down and directly onto the effect's icon
		MouseGetPos, iconX, iconY
		ControlGetPos, , , www, hhh, DroverLord - Window Class16, ahk_class Premiere Pro
		MouseMove, www/3, hhh/2, 0, R ;clicks in about the CENTER of the Effects panel. This clears the displayed presets from any duplication errors
		MouseClick, left, , , 1
		sleep 10
		MouseMove, iconX, iconY, 0 ;moves cursor BACK onto the effect's icon
		sleep 35
		MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;drags this effect to the cursor's pervious coordinates, which should be above a clip.
		sleep 10
		Send ^+!0 ;returns focus to the timeline. doesn't work for multiple timelines :(
		MouseClick, left, , , 1 ;returns focus to the timeline.
		BlockInput, off
	Return
	
	i:: ;Clears in and out on video
		Send ^+x
	Return
	
	e:: ;Exports the marked video
		Send ^m
	Return
	
#If
