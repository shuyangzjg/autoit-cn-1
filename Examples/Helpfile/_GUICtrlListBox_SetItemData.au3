#include <GuiListBox.au3>
#include <GUIConstantsEx.au3>

$Debug_LB = False ;��鴫�ݸ� ListBox ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

; ����˲�����Ӧ������ʹ�����ú�����������Ŀ��
; ��Ŀ����Ϊ��Ӧ��ÿ���ַ����� ControlID

_Main()

Func _Main()
	Local $hListBox

	; ���� GUI
	GUICreate("List Box Set Item Data", 400, 296)
	$hListBox = GUICtrlCreateList("", 2, 2, 396, 296)
	GUISetState()

	; �����ַ���
	_GUICtrlListBox_BeginUpdate($hListBox)
	For $iI = 1 To 9
		_GUICtrlListBox_AddString($hListBox, StringFormat("%03d : Random string", Random(1, 100, 1)))
	Next
	_GUICtrlListBox_EndUpdate($hListBox)

	; ������Ŀ����
	_GUICtrlListBox_SetItemData($hListBox, 4, 1234)

	; ��ȡ��Ŀ����
	MsgBox(4160, "��Ϣ", "Item 5 Data: " & _GUICtrlListBox_GetItemData($hListBox, 4))

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main