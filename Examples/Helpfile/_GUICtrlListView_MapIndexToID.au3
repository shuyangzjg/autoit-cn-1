#include <GUIConstantsEx.au3>
#include <GuiListView.au3>

$Debug_LV = False ; ��鴫�ݸ� ListView ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $iID, $hListView

	GUICreate("ListView Map Index  To ID", 400, 300)
	$hListView = GUICtrlCreateListView("", 2, 2, 394, 268)
	GUISetState()

	; Add column
	_GUICtrlListView_AddColumn($hListView, "Items", 100)

	; ������Ŀ
	_GUICtrlListView_AddItem($hListView, "Item 1")
	_GUICtrlListView_AddItem($hListView, "Item 2")
	_GUICtrlListView_AddItem($hListView, "Item 3")

	; Show ID for item 2
	$iID = _GUICtrlListView_MapIndexToID($hListView, 1)
	MsgBox(4160, "��Ϣ", "Index to ID: " & $iID)
	MsgBox(4160, "��Ϣ", "ID to Index: " & _GUICtrlListView_MapIDToIndex($hListView, $iID))

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main