#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GDIPlus.au3>
#include <ScreenCapture.au3>
#include <WinAPI.au3>


Global $iMemo

_Main()

Func _Main()
	Local $hBitmap, $hImage, $aRet

	; ���� GUI
	GUICreate("GDI+", 600, 400)
	$iMemo = GUICtrlCreateEdit("", 2, 2, 596, 396, $WS_VSCROLL)
	GUICtrlSetFont($iMemo, 9, 400, 0, "Courier New")
	GUISetState()

	; ��ʼ�� GDI+ ��
	_GDIPlus_Startup()

	; ���� 32 λλͼ
	$hBitmap = _ScreenCapture_Capture("")
	$hImage = _GDIPlus_BitmapCreateFromHBITMAP($hBitmap)

	; ��ʾ��Ļ��������ظ�ʽ
	$aRet = _GDIPlus_ImageGetPixelFormat($hImage)
	MemoWrite("Image pixel format of screen capture: " & $aRet[1]);
	MemoWrite("Image pixel format constant: " & $aRet[0]);
	MemoWrite();

	; ������Ļ����λͼ���ļ�
	_GDIPlus_ImageSaveToFile($hImage, @MyDocumentsDir & "\GDIPlus_Image.jpg")

	; ������Դ
	_GDIPlus_ImageDispose($hImage)
	_WinAPI_DeleteObject($hBitmap)

	; ���ļ��м�����Ļ����λͼ
	$hImage = _GDIPlus_ImageLoadFromFile(@MyDocumentsDir & "\GDIPlus_Image.jpg")

	; ��ʾ�ѱ����ļ������ظ�ʽ
	$aRet = _GDIPlus_ImageGetPixelFormat($hImage)
	MemoWrite("Image pixel format of saved file: " & $aRet[1]);
	MemoWrite("Image pixel format constant: " & $aRet[0]);

	; ������Դ
	_GDIPlus_ImageDispose($hImage)

	; �ر� GDI+ ��
	_GDIPlus_Shutdown()

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

EndFunc   ;==>_Main

; д��һ�е� memo �ؼ�
Func MemoWrite($sMessage = '')
	GUICtrlSetData($iMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite