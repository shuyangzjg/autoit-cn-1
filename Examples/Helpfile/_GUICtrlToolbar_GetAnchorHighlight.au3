#include <GuiToolbar.au3>
#include <GUIConstantsEx.au3>

$Debug_TB = False ; ��鴫�ݸ�����������, ����ΪTrue�������һ���ؼ��ľ��,���ڼ�����Ƿ���

_Main()

Func _Main()
	Local $hToolbar, $fEnabled

	Run("explorer.exe /root, ,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}")
	WinWaitActive("My Computer")
	Sleep(1000)
	$hToolbar = _GUICtrlToolbar_FindToolbar("[CLASS:CabinetWClass]", "&File")
	$fEnabled = _GUICtrlToolbar_GetAnchorHighlight($hToolbar)
	MsgBox(4096, "��Ϣ", "Anchor highlight enabled: " & $fEnabled)
	_GUICtrlToolbar_SetAnchorHighlight($hToolbar, Not $fEnabled)
	MsgBox(4096, "��Ϣ", "Anchor highlight enabled: " & _GUICtrlToolbar_GetAnchorHighlight($hToolbar))

EndFunc   ;==>_Main