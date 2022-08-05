use biscoff;

-- CCG|CCG:CC|CCNAME
-- 1 | 통신사 : 1 | SKT
-- 1 | 통신사 : 2 | KT
-- 1 | 통신사 : 3 | LGT
-- 나오게 쿼리 짜놓기

SELECT
	a.seq
    ,a.ccg_name
    ,b.cc_key
    ,b.cc_name
FROM ccg a
left join cc b on b.ccg_seq = a.seq;
-- WHERE 
-- a.seq="7";
    


-- 로그인
-- 로그인은 간단해서 a 넣지 않았지만 다른것들은 넣어서 해보기
-- SELECT * FROM member WHERE id = "" and password = "";

-- 어쩌구 목록

-- 코멘트 목록

-- 극장 목록

-- 데이터를 입력해서 필요한 정보를 조회 할때 어떤게 필요할지를 생각해보고 쿼리문 짜기