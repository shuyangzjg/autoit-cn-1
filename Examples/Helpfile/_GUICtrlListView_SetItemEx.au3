#include <GUIConstantsEx.au3>
#include <GuiListView.au3>

$Debug_LV = False ; ��鴫�ݸ� ListView ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $tText, $tItem, $hListView

	GUICreate("ListView Set Item Ex", 400, 300)
	$hListView = GUICtrlCreateListView("", 2, 2, 394, 268)
	GUISetState()

	; ������
	_GUICtrlListView_AddColumn($hListView, "Items", 100)

	; ������Ŀ
	GUICtrlCreateListViewItem("Item 1", $hListView)
	GUICtrlCreateListViewItem("Item 2", $hListView)
	GUICtrlCreateListViewItem("Item 3", $hListView)

	; Change item 2
	MsgBox(4160, "��Ϣ", "Changing item 2")
	$tText = DllStructCreate("wchar Text[11]")
	$tItem = DllStructCreate($tagLVITEM)
	DllStructSetData($tText, "Text", "New Item 2")
	DllStructSetData($tItem, "Mask", $LVIF_TEXT)
	DllStructSetData($tItem, "Item", 1)
	DllStructSetData($tItem, "Text", DllStructGetPtr($tText))
	_GUICtrlListView_SetItemEx($hListView, $tItem)

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main