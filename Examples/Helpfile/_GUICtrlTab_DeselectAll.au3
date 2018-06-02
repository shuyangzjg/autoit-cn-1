#include <GUIConstantsEx.au3>
#include <GuiTab.au3>

$Debug_TAB = False ; ��鴫�ݸ�����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $hTab

	; ���� GUI
	GUICreate("Tab Control Deselect All", 400, 300)
	$hTab = GUICtrlCreateTab(2, 2, 396, 296, $TCS_BUTTONS)
	GUISetState()

	; ���ӱ�ǩ
	_GUICtrlTab_InsertItem($hTab, 0, "Tab 1")
	_GUICtrlTab_InsertItem($hTab, 1, "Tab 2")
	_GUICtrlTab_InsertItem($hTab, 2, "Tab 3")

	; Select 2nd Tab Item
	_GUICtrlTab_SetCurSel($hTab, 1)

	; Reset tab selection
	MsgBox(4160, "��Ϣ", "Resetting tab selection")
	_GUICtrlTab_DeselectAll($hTab, False)

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main