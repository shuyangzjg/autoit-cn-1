; ***************************************************************
; ʾ�� 1 - ��һ��������������������ʶ����, д�����ݵ���Ԫ��.  Ȼ�󱣴沢�ر��ļ�
; *****************************************************************

#include <Excel.au3>

Local $oExcel = _ExcelBookNew() ;�����¹�����, ��ʹ��ɼ�

_ExcelWriteCell($oExcel, "I Wrote to This Cell", 1, 1) ;д�����ݵ���Ԫ��

MsgBox(4096, "Exiting", "Press OK to Save File and Exit")
_ExcelBookSaveAs($oExcel, @TempDir & "\Temp.xls", "xls", 0, 1) ; �������ǰ������浽��ʱĿ¼; ��Ҫʱ�����ļ�
_ExcelBookClose($oExcel) ; ������ǹرղ��˳�

; ***************************************************************
; ʾ�� 2 - ��һ��������������������ʶ����, ��ѭ����д�����ݵ���Ԫ��.  Then Save and Close file.
; *****************************************************************

#include <Excel.au3>

$oExcel = _ExcelBookNew() ;�����¹�����, ��ʹ��ɼ�

For $i = 1 To 20 ;ѭ��
	_ExcelWriteCell($oExcel, "I Wrote to This Cell", $i, 1) ;д�����ݵ���Ԫ��
Next

MsgBox(4096, "Exiting", "Press OK to Save File and Exit")
_ExcelBookSaveAs($oExcel, @TempDir & "\Temp.xls", "xls", 0, 1) ; �������ǰ������浽��ʱĿ¼; ��Ҫʱ�����ļ�
_ExcelBookClose($oExcel) ; ������ǹرղ��˳�


; ***************************************************************
; ʾ�� 3 - ��һ��������������������ʶ����, ��ѭ����д�����ݵ���Ԫ��.  Ȼ��ʹ�� _ExcelWriteCell д�빫ʽ
; *****************************************************************

#include <Excel.au3>

$oExcel = _ExcelBookNew() ;�����¹�����, ��ʹ��ɼ�

For $i = 1 To 20 ;ѭ��
	_ExcelWriteCell($oExcel, $i, $i, 1) ;д�����ݵ���Ԫ��
Next

_ExcelWriteCell($oExcel, "=Average(A:A)", 1, 2) ;ʹ�� A1 ������ʽ, ������ R1C1
_ExcelWriteCell($oExcel, "=Average(A1:A20)", 1, 3) ;д�빫ʽ����һ�ַ��� - ʹ�� A1 ������ʽ, ������ R1C1

MsgBox(4096, "Exiting", "Press OK to Save File and Exit")
_ExcelBookSaveAs($oExcel, @TempDir & "\Temp.xls", "xls", 0, 1) ; �������ǰ������浽��ʱĿ¼; ��Ҫʱ�����ļ�
_ExcelBookClose($oExcel) ; ������ǹرղ��˳�