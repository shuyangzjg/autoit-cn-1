#include <GUIConstantsEx.au3>
#include <GuiListView.au3>
#include <GuiImageList.au3>

$Debug_LV = False ; ��鴫�ݸ� ListView ����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $iX, $iY, $hImage, $hListView

	GUICreate("ListView Get Origin X", 400, 300)
	$hListView = GUICtrlCreateListView("", 2, 2, 394, 268)
	GUICtrlSetStyle($hListView, $LVS_ICON)
	GUISetState()

	; ����ͼ��
	$hImage = _GUIImageList_Create()
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap($hListView, 0xFF0000, 16, 16))
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap($hListView, 0x00FF00, 16, 16))
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap($hListView, 0x0000FF, 16, 16))
	_GUICtrlListView_SetImageList($hListView, $hImage, 0)

	; ������
	_GUICtrlListView_AddColumn($hListView, "Items", 100)

	; ������Ŀ
	_GUICtrlListView_AddItem($hListView, "Item 1", 0)
	_GUICtrlListView_AddItem($hListView, "Item 2", 1)
	_GUICtrlListView_AddItem($hListView, "Item 3", 2)

	; Get current origin
	$iX = _GUICtrlListView_GetOriginX($hListView)
	$iY = _GUICtrlListView_GetOriginY($hListView)
	MsgBox(4160, "��Ϣ", StringFormat("Origin: X=%d, Y=%d", $iX, $iY))

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main