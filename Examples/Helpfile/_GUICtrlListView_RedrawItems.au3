#include <GUIConstantsEx.au3>
#include <GuiListView.au3>

$Debug_LV = False ; ��鴫�ݸ� ListView ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $hListView

	GUICreate("ListView Redraw Items", 400, 300)
	$hListView = GUICtrlCreateListView("", 2, 2, 394, 268)
	GUISetState()

	; Add column
	_GUICtrlListView_AddColumn($hListView, "Items", 100)

	; ������Ŀ
	_GUICtrlListView_BeginUpdate($hListView)
	For $iI = 1 To 10
		_GUICtrlListView_AddItem($hListView, "Item " & $iI)
	Next
	_GUICtrlListView_EndUpdate($hListView)

	; Redraw items
	_GUICtrlListView_RedrawItems($hListView, 0, 9)

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main