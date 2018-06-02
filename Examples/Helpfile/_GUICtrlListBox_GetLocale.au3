#include <GuiListBox.au3>
#include <GUIConstantsEx.au3>

$Debug_LB = False ;��鴫�ݸ� ListBox ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $hListBox

	; ���� GUI
	GUICreate("List Box Get Locale", 400, 296)
	$hListBox = GUICtrlCreateList("", 2, 2, 396, 296)
	GUISetState()

	; ��ʾ����, ���Ҵ���, ���Ա�ʶ��, ��Ҫ���Ա�ʶ���������Ա�ʶ��
	MsgBox(4160, "��Ϣ", _
			"Locale .................: " & _GUICtrlListBox_GetLocale($hListBox) & @LF & _
			"Country code ........: " & _GUICtrlListBox_GetLocaleCountry($hListBox) & @LF & _
			"Language identifier..: " & _GUICtrlListBox_GetLocaleLang($hListBox) & @LF & _
			"Primary Language id : " & _GUICtrlListBox_GetLocalePrimLang($hListBox) & @LF & _
			"Sub-Language id ....: " & _GUICtrlListBox_GetLocaleSubLang($hListBox))

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main