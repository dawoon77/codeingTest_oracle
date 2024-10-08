-- 코드를 입력하세요
SELECT
C.APNT_NO,
A.PT_NAME,
C.PT_NO,
C.MCDP_CD,
B.DR_NAME,
C.APNT_YMD
FROM PATIENT A, DOCTOR B, APPOINTMENT C
WHERE A.PT_NO = C.PT_NO
AND B.DR_ID = C.MDDR_ID
AND C.MCDP_CD = 'CS'
AND TO_CHAR(C.APNT_YMD,'YYYY-MM-DD') = '2022-04-13'
AND C.APNT_CNCL_YN = 'N'
ORDER BY C.APNT_YMD ASC
