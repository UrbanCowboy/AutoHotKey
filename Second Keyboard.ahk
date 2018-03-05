;This Script allows you to assign keys on the second keyboard to any function you would like.



#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Client ;Allows the mouse position to be based off of the Client of the active window. (Doesn't include the title bars)
SetTitleMatchMode, 3 ;Sets the title match mode to match exactly the application that is open.
#SingleInstance force ;Makes sure that only one version of this script runs at a time
GroupAdd, Explorer, "ahk_class CabinetWClass"
Return
;-------------------------------------NOTES-------------------------------------
; Introduction to AutoHotKey and all of the commands and keys that can be used can be found here https://autohotkey.com/docs/AutoHotkey.htm
; # = Windows Key
; ! = Alt Key
; ^ = Ctrl Key
; + = Shift
;
;
; -----------------------------------End Notes-----------------------------------
;-----------------------Begin Functions-------------------------------------------

windowfocustitle(title) {
	SetTitleMatchMode, 2
	IfWinExist, %title%
		{
			SetTitleMatchMode, 2
			WinGet MMXF, MinMax, %title%
			;MsgBox, %title%
			IfEqual MMXF,-1
				{
					WinActivate, %title%
					SetTitleMatchMode, 3
					Return
				}
			Else IfWinActive, %title%
				{
					WinMinimize, %title%
					SetTitleMatchMode, 3
					Return
				}
			Else IfWinNotActive, %title%
				{
					WinActivate, %title%
					SetTitleMatchMode, 3
					Return
				}
		}
	Else IfWinNotExist, %title% 
		{
			MsgBox, %title% does not exist
			SetTitleMatchMode, 3
			Return
		}
	
}


	;BlockInput, SendAndMouse
	;	BlockInput, On
	;	SetKeyDelay, 0
	;	MouseGetPos, xpos, ypos ;stores the cursor's current coordinates at X%xpos% Y%ypos%
	;	ControlGetPos, X, Y, Width, Height, Edit3, ahk_class Premiere Pro ;;;highlights Premier's effects panel search ;bar (info gotten from window spy)
	;	MouseMove, X+Width+10, Y+Height/2, 0
	;	sleep 5
	;	MouseClick, left, , , 1 ;clicks on X
	;	MouseMove, X-25, Y+10, 0
	;	sleep 5
	;	MouseClick, left, , , 1
	;	sleep 5
	;	Send Dip to Black
	;	sleep 30
	;	MouseMove, 52, 160, 0, R ;moves cursor down and directly onto the effect's icon
	;	MouseGetPos, iconX, iconY
	;	ControlGetPos, , , www, hhh, DroverLord - Window Class16, ahk_class Premiere Pro
	;	MouseMove, www/3, hhh/2, 0, R ;clicks in about the CENTER of the Effects panel. This clears the displayed presets ;from any duplication errors
	;	MouseClick, left, , , 1
	;	sleep 10
	;	MouseMove, iconX, iconY, 0 ;moves cursor BACK onto the effect's icon
	;	sleep 35
	;	MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;drags this effect to the cursor's pervious coordinates, which should ;be above a clip.
	;	sleep 10
	;	Send ^+!0 ;returns focus to the timeline. doesn't work for multiple timelines :(
	;	MouseClick, left, , , 1 ;returns focus to the timeline.
	;	BlockInput, off

;-----------------------End Functions--------------------------------------------
;-----------------------Global Shortcuts-----------------------------------------
;------------------NOT TO BE USED IN ANY OF THE BELOW PROGRAMS--------------------
#If getKeyState("F23", "P")

 F23::
 Return
	
	F1:: ;Used to activate my email
		windowfocustitle("jonas@mortgageeducators.com - Mortgage Educators Mail")
	Return
	
	F2::
		windowfocustitle("Dashboard")
	Return
 
	F3::
		windowfocustitle("Google Hangouts")
	Return
	
	F4::
		windowfocustitle("Slack - Mortgage Educators & Compliance")
	Return
	
	F5::
		windowfocustitle("| Trello")
	Return
	
	F6::
		windowfocustitle("Discord")
	Return
	
	F7::
		windowfocustitle("FileZilla")
	Return
	
	F9::
		windowfocustitle("Google Keep")
	Return
	
	F11::
		windowfocustitle("Administration - RSTickets! Pro")
	Return
	
	F12::
		windowfocustitle("Pocket Casts")
	Return
		
	Up:: ;Thumbs up for Google Play Music Desktop Player
		Send, ^+!u
	Return

	Down:: ;Thumbs down for Google Play Music Desktop Player
		Send ^+!d
	Return
	
	Space::
		windowfocustitle("ahk_exe connect.exe")
	Return
	
	2:: 
		Send, {Tab}
		Sleep 100
		Send, {Down}
		Sleep 100
		Send, {Tab}
		Sleep 300
		Send, 18HR/Chapter 7/18 HR Chapter 07 Part  
	Return
	
	1::
		SendRaw, Chapter 07 Part p
	Return
	
	3:: 
		SendRaw, 2017 NMLS Online Self-Study 8 Hour SAFE Comprehensive CE #6963 HMDA, AML, ARMs, and 1003 Special Offer for AmeriFirst Financial, Inc
	Return
	
	4::
		SendRaw, 2017 Additional NMLS CE State Elective AmeriFirst Financial, Inc. Special Offer
	Return
	
	5::
		Send, 2017 Online 8 Hour SAFE Comprehensive CE
	Return
	
	6::
		Send, LATE CE - 8 Hour SAFE Online Self Study Comprehensive Course  NMLS
	Return
	
	ScrollLock::
		windowfocustitle("ahk_exe Google Play Music Desktop Player.exe")
	Return

;-----------------------Dexpot Shortcuts----------------------------------

	Numpad1:: ;Changes to desktop 1
		Send, !1
	Return
	
	Numpad2:: ;Changes to desktop 2
		Send, !2
	Return
	
	Numpad3:: ;Changes to desktop 3
		Send, !3
	Return
	
	Numpad4:: ;Changes to desktop 4
		Send, !4
	Return
	
	Numpad5:: ;Changes to desktop 5
		Send, !5
	Return
	
	NumpadAdd:: ;Full screen preview in Dexpot
		Send, #{F3}
	Return
	
	NumpadMult:: ;Copies window to all desktops
		Send, !^+5
	Return
	
	NumpadSub:: ;Exits window on current desktop only. (Leaves any copies on other desktops)
		Send, ^#!+{F4}
	Return

;----------------------End Global Shortcuts----------------------------------------

;-----------------------Adobe Premiere Pro Shortcuts----------------------------
; See C:\Users\MEC\Google Drive\Scripts\AutoHotKey\Premiere Pro\Premiere Second Keyboard.ahk

;#If WinActive("ahk_exe Adobe Premiere Pro.exe") and getKeyState("F23", "P") ;The keys on the second keyboard are wrapped with F23. This checks to make sure that F23 is pressed before running the below scripts.
;F23::return
	
;-----------------------End Adobe Premiere Pro Shortcuts------------------------

;-----------------------Adobe Captivate Shortcuts-------------------------------
#If WinActive("ahk_exe AdobeCaptivate.exe") and getKeyState("F23", "P") ;The keys on the second keyboard are wrapped with F23. This checks to make sure that F23 is pressed before running the below scripts.

F23::
Return

	m:: ;This is used to open up the Master Slide View after the properties window is already open.
		Click 1758, 341
		Sleep 3000
		Click 131, 678
		Send {Home}
		Sleep 500
		MouseMove 885, 523
		Click 2
		Sleep 1000
		Click 355, 218
	Return

	o:: ;This is used to open a project.
		Send ^o
	Return

	n:: ;This is used to create a new project from template.
		Click -330, -5
		Click 63, 19
		Click 90, 44
		Click 390, 86
		Sleep 1000
		Click 390, 109
	Return

	e:: ;This is used to exit the Master Slide View
		Click 273, 342
		Sleep 2000
		Click 924, 57
	Return

	s:: ;This is used to open the skin editor and refresh the slides and open the info pane
		Send +{F10}
		Sleep 1000
		Click 68, 613
		Sleep 200
		Click 140, 637
		Sleep 1000
		Click 409, 29
	Return

	c:: ;This is used to close the Skin Editor
		Click 273, 489
		Sleep 100
		Click 894,6
	Return

	i:: ;This is used to import video into the project
		Send ^!v
		Sleep 1000
		Click 121, 22
		Click 471, 64
		Sleep 500
		Click 244,105
	Return

	v:: ;This opens up the preview in Captivate
		Send {F4}
	Return

	q:: ;This closes the Captivate Project but leaves Captivate open to do another project
		;Send ^w
		Send ^s
		Sleep 500
		Send {Left}
		Send {Enter}
		Sleep 2000
		Send ^w
	Return

	p:: ;This Publishes the SCORM
		Send +{F12}
		Sleep 1500
		Click 454, 70
		;Send, {Space}
	Return

	t:: ;Opens the adjust Timer Widget Settings - Must have the timeline and Properties panel open
		Click 255, 919
		MouseMove 1838, 241
		Sleep 100
		Click
		Sleep 1000
		MouseMove 360, 300
		Click 2
	Return

	d:: ;This selects all of the slide information for the Video SCORMS
		Loop 4{
			Send {Tab}
			}
		Send {Down}
		Loop 2{
			Send {Tab}
			}
		Send {Space}
		Send {Tab}
		Send {Space}
		Send {Enter}
	Return

	Enter:: ;This confirms the publish screen and publishs the SCORM
		Click 158, 221
		Sleep 100
		Click 432, 364
		Sleep 200
		Send {Enter}
		;Loop 5 {
		;	Send {Tab}
		;	}
		;Send {Enter}
		;Sleep 750
		;Send {Enter}
	Return
	
	w:: ;Import Slides
		Send, ^+p
		Send, {Enter}
		Sleep 1000
		Click 323, 104
	Return
	
	 r:: ;paste the timer all the way down, adjust as needed.
		Click 60, 196
		Sleep 100
		Send ^v
		sleep 1000
		Click 60, 331
		Sleep 100
		Send ^v
		sleep 1000
		Click 60, 431
		Sleep 100
		Send ^v
		sleep 1000
		Click 60, 631
		Sleep 100
		Send ^v
		sleep 1000
		Click 60, 731
		Sleep 100
		Send ^v
		sleep 1000
		Click 60, 851
		Sleep 100
		Send ^v
		sleep 1000
	Return


;------------------------End Adobe Captivate Shortcuts----------------------------

;------------------------Google Chrome LMS Shortcuts------------------------------
#If WinActive("ahk_exe chrome.exe") and getKeyState("F23", "P") ;The keys on the second keyboard are wrapped with F23. This checks to make sure that F23 is pressed before running the below scripts.

F23::
Return

	s:: ;Saves a new SCORM Package - Only works on the SCORM Editing Page in JoomlaLMS and the topalert is NOT published
		Loop 2{
			Send {Tab}
		}
		Loop 3{
			Send {Right}
			Send {Tab}
		}
		Send 620
		Sleep 200
		Send {Home}
		Click 1391, 521
		;Click 1383, 479 ;Temporary while working on 4 HR AZ DFI Course
	Return

	i:: ; When on Learning Paths page this Imports a new SCORM - Only works on the Learning Paths Main page and the topalert is NOT published
		Send {End}
		MouseMove 477, 806
		Sleep 100
		Click
		Sleep 1000
		MouseMove 761, 547
		;MouseMove 941, 506 ;Temporary while working on 4 HR AZ DFI Course
		Sleep 1000
		Click
	Return

	e:: ;Edits currently selected Quiz - Only works on the Quiz Management Page of JoomlaLMS and the topalert is NOT published.
		Send {Home}
		Sleep, 100
		Click 569, 522
	Return

	q:: ;Save the Quiz - Only works in the Quiz Editing Page of Joomla LMS and the topalert is NOT published.
		Send {Home}
		Sleep, 50
		Click 538, 523
	Return

	d:: ;Enter Default Description for the quizzes
		Send, {Raw}<p>Answer the question(s) to complete this Activity</p><p></p><p>There is no time limit. You may attempt as many times as needed to pass.</p><h2>Click<img alt="" src="http://mortgageeducators.com/images/courses/next.png" height="34" width="76" />in the upper right to proceed to the activity.</h2>
	Return

	r:: ;Send my usual reply
		Send, Let us know if you have any additional questions or concerns.
		Loop 2{
			Send, {Enter}
		}
		Send, -Jonas
	Return

	a:: ;Saves existing SCORM after you have made a change
		Send, {Home}
		Sleep 500
		Click 1393, 519
	Return
	
	w:: ;Edits currently selected SCORM
		Send, {End}
		Sleep 500
		Click 567, 805
		Sleep 2000
		Click 940, 545
	Return
	
;-----------------------End Google Chrome LMS Shortcuts----------------------------------

;-----------------------Adobe Audition Shortcuts Start-----------------------------------
#If WinActive("ahk_exe Adobe Audition CC.exe") and getKeyState("F23", "P") ;The keys on the second keyboard are wrapped with F23. This checks to make sure that F23 is pressed before running the below scripts.

F23::
Return

	c:: ;Opens the Channel Mixer and duplicates the Left Channel to the Right Channel
		Click 195, -10
		Click 279, 234
		Click 564, 255
		Sleep 100
		Click 267, 209
	Return

	n:: ;Applys Noise Reduction to the entire File
		Send ^+p
		Sleep 100
		Click 86, 70
		Sleep 100
		Click 368, 357
		Sleep 100
		Click 506, 644
	Return

;-----------------------End Adobe Audition Shortcuts--------------------------------------
;-----------------------Microsoft PowerPoint Shortcuts Start------------------------------
#If WinActive("ahk_exe POWERPNT.EXE") and GetKeyState("F23", "P")

F23::
Return

	n::
		Send, {Alt}
		Send, f
		Send, n
		Send, l
		Send, 1
		Sleep, 2000
		Click, R, 154, 462
		Send, k
		Sleep, 500
		Send, {Home}
		Sleep, 500
		Send, {Del}
	Return

#If
