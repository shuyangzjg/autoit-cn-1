#include <GUIConstantsEx.au3>
#include <GuiSlider.au3>

$Debug_S = False ; ��鴫�ݸ�����������, ����Ϊ�沢ʹ����һ�ؼ��ľ�����Կ������Ƿ���Ч

_Main()

Func _Main()
	Local $hSlider

	; ���� GUI
	GUICreate("Slider Set Line Size", 400, 296)
	$hSlider = GUICtrlCreateSlider(2, 2, 396, 20, BitOR($TBS_TOOLTIPS, $TBS_AUTOTICKS, $TBS_ENABLESELRANGE))
	GUISetState()

	; Get Line Size
	MsgBox(4160, "��Ϣ", "Line Size: " & _GUICtrlSlider_GetLineSize($hSlider))

	; Set Line Size
	_GUICtrlSlider_SetLineSize($hSlider, 4)

	; Get Line Size
	MsgBox(4160, "��Ϣ", "Line Size: " & _GUICtrlSlider_GetLineSize($hSlider))

	; ѭ��ֱ���û��˳�
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>_Main