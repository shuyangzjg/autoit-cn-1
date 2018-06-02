#include <GuiMenu.au3>

_Main()

Func _Main()
	Local $hWnd, $hMain, $tRect

	; �򿪼��±�
	Run("notepad.exe")
	WinWaitActive("[CLASS:Notepad]")
	$hWnd = WinGetHandle("[CLASS:Notepad]")
	$hMain = _GUICtrlMenu_GetMenu($hWnd)

	; ��ȡ�ļ��˵�����
	$tRect = _GUICtrlMenu_GetItemRectEx($hWnd, $hMain, 0)

	Writeln("File X1: " & DllStructGetData($tRect, "Left"))
	Writeln("File Y1: " & DllStructGetData($tRect, "Top"))
	Writeln("File X2: " & DllStructGetData($tRect, "Right"))
	Writeln("File Y2: " & DllStructGetData($tRect, "Bottom"))

EndFunc   ;==>_Main

; д��һ���ı������±�
Func Writeln($sText)
	ControlSend("[CLASS:Notepad]", "", "Edit1", $sText & @CR)
EndFunc   ;==>Writeln