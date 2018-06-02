#include <GUIConstantsEx.au3>
#include <GuiStatusBar.au3>
#include <WindowsConstants.au3>

$Debug_SB = False ; ��鴫�ݸ�����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

Global $iMemo

_Main()

Func _Main()

	Local $hGUI, $hStatus
	Local $aParts[3] = [75, 150, -1]

	; ���� GUI
	$hGUI = GUICreate("(Example 1) StatusBar Get Text Flags", 400, 300)
	$hStatus = _GUICtrlStatusBar_Create($hGUI)

	; ���� memo �ؼ�
	$iMemo = GUICtrlCreateEdit("", 2, 2, 396, 274, $WS_VSCROLL)
	GUICtrlSetFont($iMemo, 9, 400, 0, "Courier New")
	GUISetState()

	; Set parts
	_GUICtrlStatusBar_SetParts($hStatus, $aParts)
	_GUICtrlStatusBar_SetText($hStatus, "Part 1", 0, $SBT_POPOUT)
	_GUICtrlStatusBar_SetText($hStatus, "Part 2", 1, $SBT_NOBORDERS)
	_GUICtrlStatusBar_SetText($hStatus, "Part 3", 2, $SBT_NOTABPARSING)

	; Get text information
	For $iI = 0 To _GUICtrlStatusBar_GetCount($hStatus) - 1
		MemoWrite("Part " & $iI & " text flags .: " & _GUICtrlStatusBar_GetTextFlags($hStatus, $iI))
		MemoWrite("Part " & $iI & " text length : " & _GUICtrlStatusBar_GetTextLength($hStatus, $iI))
		MemoWrite("Part " & $iI & " text length : 0x" & Hex(_GUICtrlStatusBar_GetTextLengthEx($hStatus, $iI)))
		MemoWrite()
	Next

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main

; д����Ϣ�� memo
Func MemoWrite($sMessage = "")
	GUICtrlSetData($iMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite