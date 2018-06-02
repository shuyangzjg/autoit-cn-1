#include <GuiListBox.au3>
#include <GUIConstantsEx.au3>

$Debug_LB = False ;��鴫�ݸ� ListBox ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $hListBox

	; ���� GUI
	GUICreate("List Box Init Storage", 400, 296)
	$hListBox = GUICtrlCreateList("", 2, 2, 396, 296)
	GUISetState()

	; �����ļ�
	_GUICtrlListBox_BeginUpdate($hListBox)
	_GUICtrlListBox_ResetContent($hListBox)
	MsgBox(4160, "��Ϣ", "Storage Allocated: " & _GUICtrlListBox_InitStorage($hListBox, 100, 4096))
	_GUICtrlListBox_Dir($hListBox, @WindowsDir & "\win*.exe")
	_GUICtrlListBox_AddFile($hListBox, @WindowsDir & "\notepad.exe")
	_GUICtrlListBox_EndUpdate($hListBox)

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main