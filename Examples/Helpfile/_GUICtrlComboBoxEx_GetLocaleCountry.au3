#include <GuiComboBoxEx.au3>
#include <GUIConstantsEx.au3>
#include <Constants.au3>

$Debug_CB = False ;��鴫�ݸ� ComboBox/ComboBoxEx ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $hGUI, $hCombo

	; ���� GUI
	$hGUI = GUICreate("ComboBoxEx Get Locale Country code", 400, 300)
	$hCombo = _GUICtrlComboBoxEx_Create($hGUI, "", 2, 2, 394, 100)
	GUISetState()

	; �����ļ�
	_GUICtrlComboBoxEx_AddDir($hCombo, "", $DDL_DRIVES, False)

	; ��ʾ����, ���Ҵ���, ���Ա�ʶ��, ��Ҫ���Ա�ʶ���������Ա�ʶ��
	MsgBox(4160, "��Ϣ", _
			"Locale .................: " & _GUICtrlComboBoxEx_GetLocale($hCombo) & @LF & _
			"Country code ........: " & _GUICtrlComboBoxEx_GetLocaleCountry($hCombo) & @LF & _
			"Language identifier..: " & _GUICtrlComboBoxEx_GetLocaleLang($hCombo) & @LF & _
			"Primary Language id : " & _GUICtrlComboBoxEx_GetLocalePrimLang($hCombo) & @LF & _
			"Sub-Language id ....: " & _GUICtrlComboBoxEx_GetLocaleSubLang($hCombo))


	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>_Main