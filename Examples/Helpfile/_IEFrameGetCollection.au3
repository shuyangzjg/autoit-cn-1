; *******************************************************
; ʾ�� 1 - �򿪿�ܼ�ʾ��, ��ȡ��ܵļ���
;				�Լ��Ͻ���ѭ����ʾ���ǵ�Դ URL
; *******************************************************

#include <IE.au3>

Local $oIE = _IE_Example("frameset")
Local $oFrames = _IEFrameGetCollection($oIE)
Local $iNumFrames = @extended
For $i = 0 To ($iNumFrames - 1)
	Local $oFrame = _IEFrameGetCollection($oIE, $i)
	MsgBox(4096, "Frame Info", _IEPropertyGet($oFrame, "locationurl"))
Next