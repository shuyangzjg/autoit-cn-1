#include <GuiToolbar.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Constants.au3>

$Debug_TB = False ; ��鴫�ݸ�����������, ����Ϊ�沢ʹ����һ�ؼ��ľ�����Կ������Ƿ���Ч
Global $iMemo

_Main()

Func _Main()
	Local $hGUI, $hToolbar
	Local Enum $idNew = 1000, $idOpen, $idSave, $idHelp

	; ���� GUI
	$hGUI = GUICreate("Toolbar", 400, 300)
	$hToolbar = _GUICtrlToolbar_Create($hGUI)
	$iMemo = GUICtrlCreateEdit("", 2, 36, 396, 262, $WS_VSCROLL)
	GUICtrlSetFont($iMemo, 10, 400, 0, "Courier New")
	GUISetState()

	; ���ÿؼ���ʽ
	_GUICtrlToolbar_SetStyle($hToolbar, BitOR($TBSTYLE_LIST, $CCS_TOP))

	; ���ӱ�׼ϵͳλͼ
	Switch _GUICtrlToolbar_GetBitmapFlags($hToolbar)
		Case 0
			_GUICtrlToolbar_AddBitmap($hToolbar, 1, -1, $IDB_STD_SMALL_COLOR)
		Case 2
			_GUICtrlToolbar_AddBitmap($hToolbar, 1, -1, $IDB_STD_LARGE_COLOR)
	EndSwitch

	; ���Ӱ�ť
	_GUICtrlToolbar_AddButton($hToolbar, $idNew, $STD_FILENEW)
	_GUICtrlToolbar_AddButton($hToolbar, $idOpen, $STD_FILEOPEN)
	_GUICtrlToolbar_AddButton($hToolbar, $idSave, $STD_FILESAVE)
	_GUICtrlToolbar_AddButtonSep($hToolbar)
	_GUICtrlToolbar_AddButton($hToolbar, $idHelp, $STD_HELP)

	; ��ʾ�ؼ���ʽ
	MemoWrite("Toolbar style .: 0x" & Hex(_GUICtrlToolbar_GetStyle($hToolbar)))


	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

EndFunc   ;==>_Main

; д����Ϣ�� memo
Func MemoWrite($sMessage = "")
	GUICtrlSetData($iMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite