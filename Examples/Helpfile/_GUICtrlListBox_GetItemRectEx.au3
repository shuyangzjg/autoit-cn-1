#include <GuiListBox.au3>
#include <GUIConstantsEx.au3>

$Debug_LB = False ;��鴫�ݸ� ListBox ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $tRect, $hListBox

	; ���� GUI
	GUICreate("List Box Get Item RectEx", 400, 296)
	$hListBox = GUICtrlCreateList("", 2, 2, 396, 296)
	GUISetState()

	; �����ַ���
	_GUICtrlListBox_BeginUpdate($hListBox)
	For $iI = 1 To 9
		_GUICtrlListBox_AddString($hListBox, StringFormat("%03d : Random string", Random(1, 100, 1)))
	Next
	_GUICtrlListBox_EndUpdate($hListBox)

	; Show item rectangle
	$tRect = _GUICtrlListBox_GetItemRectEx($hListBox, 4)
	MsgBox(4160, "��Ϣ", "Item 5 Rectangle: " & _
			DllStructGetData($tRect, "Left") & ", " & _
			DllStructGetData($tRect, "Top") & ", " & _
			DllStructGetData($tRect, "Right") & ", " & _
			DllStructGetData($tRect, "Bottom"))

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main