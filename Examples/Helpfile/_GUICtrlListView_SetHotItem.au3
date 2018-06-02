#include <GUIConstantsEx.au3>
#include <GuiListView.au3>

$Debug_LV = False ; ��鴫�ݸ� ListView ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $exStyles = BitOR($LVS_EX_FULLROWSELECT, $LVS_EX_GRIDLINES), $hListView

	GUICreate("ListView Set Hot Item", 400, 300)

	$hListView = GUICtrlCreateListView("", 2, 2, 394, 268)
	$hListView = GUICtrlGetHandle($hListView)
	_GUICtrlListView_SetExtendedListViewStyle($hListView, $exStyles)
	GUISetState()

	; ������
	_GUICtrlListView_AddColumn($hListView, "Column 1", 100)
	_GUICtrlListView_AddColumn($hListView, "Column 2", 100)
	_GUICtrlListView_AddColumn($hListView, "Column 3", 100)

	; ������Ŀ
	_GUICtrlListView_AddItem($hListView, "Row 1: Col 1")
	_GUICtrlListView_AddSubItem($hListView, 0, "Row 1: Col 2", 1)
	_GUICtrlListView_AddSubItem($hListView, 0, "Row 1: Col 3", 2)
	_GUICtrlListView_AddItem($hListView, "Row 2: Col 1")
	_GUICtrlListView_AddSubItem($hListView, 1, "Row 2: Col 2", 1)
	_GUICtrlListView_AddItem($hListView, "Row 3: Col 1")

	; Set hot item
	_GUICtrlListView_SetHotItem($hListView, 1)
	MsgBox(4160, "��Ϣ", "Hot Item: " & _GUICtrlListView_GetHotItem($hListView))

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main