#include <GUIConstantsEx.au3>
#include <WinAPI.au3>
#include <GuiListView.au3>
#include <GuiImageList.au3>
#include <WindowsConstants.au3>

_Main()

Func _Main()
	Local $listview, $hImage1, $hImage2
	Local $exStyles = BitOR($LVS_EX_GRIDLINES, $LVS_EX_FULLROWSELECT, $LVS_EX_SUBITEMIMAGES)

	GUICreate("ImageList Destroy", 400, 300)
	$listview = GUICtrlCreateListView("", 2, 2, 394, 268, BitOR($LVS_SHOWSELALWAYS, $LVS_NOSORTHEADER, $LVS_REPORT))
	_GUICtrlListView_SetExtendedListViewStyle($listview, $exStyles)
	GUISetState()

	; ����ͼ��
	$hImage1 = _GUIImageList_Create(11, 11)
	_GUIImageList_Add($hImage1, _WinAPI_CreateSolidBitmap(GUICtrlGetHandle($listview), 0xFF0000, 11, 11))
	_GUIImageList_Add($hImage1, _WinAPI_CreateSolidBitmap(GUICtrlGetHandle($listview), 0x00FF00, 11, 11))
	_GUIImageList_Add($hImage1, _WinAPI_CreateSolidBitmap(GUICtrlGetHandle($listview), 0x0000FF, 11, 11))
	_GUICtrlListView_SetImageList($listview, $hImage1, 1)

	; ������
	_GUICtrlListView_AddColumn($listview, "Items", 120)

	; ������Ŀ
	_GUICtrlListView_AddItem($listview, "Item 1", 0)
	_GUICtrlListView_AddItem($listview, "Item 2", 1)
	_GUICtrlListView_AddItem($listview, "Item 3", 2)

	MsgBox(4160, "��Ϣ", "Creating new image list")

	; �����µ�ͼ���б�
	$hImage2 = _GUIImageList_Create(11, 11)
	_GUIImageList_Add($hImage2, _WinAPI_CreateSolidBitmap(GUICtrlGetHandle($listview), 0x0000FF, 11, 11))
	_GUIImageList_Add($hImage2, _WinAPI_CreateSolidBitmap(GUICtrlGetHandle($listview), 0x00FF00, 11, 11))
	_GUIImageList_Add($hImage2, _WinAPI_CreateSolidBitmap(GUICtrlGetHandle($listview), 0xFF0000, 11, 11))
	_GUICtrlListView_SetImageList($listview, $hImage2, 1)

	MsgBox(4160, "��Ϣ", "Destroying 1st image list")

	; �ͷ��׸�ͼ���б�
	_GUIImageList_Destroy($hImage1)

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main