#include <GuiComboBox.au3>
#include <GUIConstantsEx.au3>

$Debug_CB = False ;��鴫�ݸ� ComboBox/ComboBoxEx ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $hCombo

	; ���� GUI
	GUICreate("ComboBox Init Storage", 400, 296)
	$hCombo = GUICtrlCreateCombo("", 2, 2, 396, 296)
	GUISetState()

	; Init Storaged
	MsgBox(4160, "��Ϣ", "Pre-Allocated Memory For: " & _GUICtrlComboBox_InitStorage($hCombo, 50, 500) & " items")

	; �����ļ�
	_GUICtrlComboBox_BeginUpdate($hCombo)
	_GUICtrlComboBox_AddDir($hCombo, @WindowsDir & "\*.exe")
	_GUICtrlComboBox_EndUpdate($hCombo)

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main