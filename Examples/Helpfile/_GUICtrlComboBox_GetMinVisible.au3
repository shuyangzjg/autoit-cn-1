#include <GuiComboBox.au3>
#include <GUIConstantsEx.au3>

$Debug_CB = False ;��鴫�ݸ� ComboBox/ComboBoxEx ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $hCombo

	; ���� GUI
	GUICreate("ComboBox Get Min Visible", 400, 296)
	$hCombo = GUICtrlCreateCombo("", 2, 2, 396, 296)
	GUISetState()

	; �����ļ�
	_GUICtrlComboBox_BeginUpdate($hCombo)
	_GUICtrlComboBox_AddDir($hCombo, @WindowsDir & "\*.exe")
	_GUICtrlComboBox_EndUpdate($hCombo)

	; Get Min Visible
	MsgBox(4160, "��Ϣ", "Min Visible:" & @TAB & _GUICtrlComboBox_GetMinVisible($hCombo), 3)

	; ��ʾ������
	_GUICtrlComboBox_ShowDropDown($hCombo, True)

	Sleep(500)

	; Set Min Visible
	_GUICtrlComboBox_SetMinVisible($hCombo, 50)

	; ��ʾ������
	_GUICtrlComboBox_ShowDropDown($hCombo)

	Sleep(500)

	_GUICtrlComboBox_ShowDropDown($hCombo, True)

	Sleep(500)

	; Get Min Visible
	MsgBox(4160, "��Ϣ", "Min Visible:" & @TAB & _GUICtrlComboBox_GetMinVisible($hCombo), 3)

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main