#include <GuiListBox.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

$Debug_LB = False ;��鴫�ݸ� ListBox ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $sText, $hListBox

	; ���� GUI
	GUICreate("List Box Sort", 400, 296)
	$hListBox = GUICtrlCreateList("", 2, 2, 396, 296, BitOR($WS_BORDER, $WS_VSCROLL, $LBS_NOTIFY, $LBS_MULTIPLESEL, $LBS_SORT))
	GUISetState()

	; �����ַ���
	_GUICtrlListBox_BeginUpdate($hListBox)
	For $iI = 1 To 9
		$sText = StringFormat("%03d : Random string ", Random(1, 100, 1))
		For $iX = 1 To Random(1, 20, 1)
			$sText &= Chr(Random(65, 90, 1))
		Next
		_GUICtrlListBox_AddString($hListBox, $sText)
	Next
	_GUICtrlListBox_InsertString($hListBox, "This is a test", 0) ; doesn't auto sort when using insert
	_GUICtrlListBox_EndUpdate($hListBox)

	; Sort'em
	MsgBox(4160, "��Ϣ", "Sort Data")
	_GUICtrlListBox_Sort($hListBox)

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main