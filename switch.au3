#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.0.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

$msg=""
$szName = InputBox(Default,"Please Enter a word","","",Default,Default,10)
Switch @error
Case 2
	$msg="Timeout"
	ContinueCase

Case 1
	$msg &="Cancellation"

Case 0
	Switch $szName

Case "a","e","i","o","u"
		$msg ="Vowel"

Case "QP"
	$msg="Maths"
	
Case "Q" to "QZ"
	$msg="Science"
	
Case Else
	$msg="Others"
	
EndSwitch
Case Else
	$msg="Something went wrong."
EndSwitch
MsgBox(0,Default,$msg)
		
		
		
	