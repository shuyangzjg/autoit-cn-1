#include <GUIConstantsEx.au3>
#include <GuiTab.au3>
#include <GuiToolTip.au3>

$Debug_TAB = False ; ��鴫�ݸ�����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $hGUI, $hTool, $hTab

	; ���� GUI
	$hGUI = GUICreate("Tab Control Get Tool Tips", 400, 300)
	$hTab = _GUICtrlTab_Create($hGUI, 2, 2, 396, 296)
	GUISetState()

	; ���ӱ�ǩ
	_GUICtrlTab_InsertItem($hTab, 0, "Tab 1")
	_GUICtrlTab_InsertItem($hTab, 1, "Tab 2")
	_GUICtrlTab_InsertItem($hTab, 2, "Tab 3")

	; Get/Set tooltip
	$hTool = _GUIToolTip_Create($hTab)
	_GUICtrlTab_SetToolTips($hTab, $hTool)

	MsgBox(4160, "��Ϣ", "ToolTip handle: 0x" & _GUICtrlTab_GetToolTips($hTab) & @CRLF & _
			"IsPtr = " & IsPtr(_GUICtrlTab_GetToolTips($hTab)) & " IsHwnd = " & IsHWnd(_GUICtrlTab_GetToolTips($hTab)))

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main