USE biscoff;

-- 데이터를 입력하여 필요한 정보를 조회할수 있는 부분들을 찾아서 쿼리문 짜보기

-- ccg : ccg | cc : cc
-- 1 : 통신사 | 1 : skt
-- 1 : 통신사 | 2 : kt
-- 1 : 통신사 | 3 : lg
-- 미리 만들어 놓으면 유용함 만들어 보기

SELECT
	a.seq
    ,a.ccg_name
    ,b.cc_name
    ,b.cc_key
FROM ccg a
JOIN cc b on b.ccg_seq = a.seq
WHERE a.seq = "7"
;

-- 로그인 부분

-- 코멘트 부분

-- 구매 부분




