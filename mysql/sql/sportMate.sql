-- 작성시 유의사항!!!!
-- 1. *아스테릭 사용금지
-- 2. 실제화면에 보이는데로 sql 작성
-- 데이터를 입력해서 필요한 정보를 조회 할때 어떤게 필요할지를 생각해보고 쿼리문 짜기


use biscoff;

-- 공통코드 그룹 
SELECT
	a.seq
    ,a.ccg_name
    ,b.cc_key
    ,b.cc_name
FROM ccg a
left join cc b on b.ccg_seq = a.seq;
-- WHERE 
-- 	a.ccg_name="통신사";

Select * From ccg;

select * from cc;

-- 로그인
SELECT 
	id
    ,name
FROM 
	member 
WHERE 1=1
	and id = "dnwk101" 
	and password = "1234567a"
; 




-- 로그인
SELECT
	seq
	,id
    ,password
    ,name
    ,dob
    ,gender
    ,job
    ,address
    ,phoneNumber
    ,mobileCarrier
    ,way_to_regist
    ,address_detail
    ,zipcode
FROM member
-- WHERE
-- 	seq = 2
;


-- 메인화면(카테고리별 게시물 총 개수(total) 및 하루 신규글 갯수(new)



-- 회원 정보 확인 및 수정
SELECT
	seq
    ,id
    ,password
    ,name
    ,dob
    ,gender
    ,job
    ,address
    ,phoneNumber
    ,mobileCarrier
    ,way_to_regist
    ,address_detail
    ,zipcode
FROM member
;

-- 게시판 목록
SELECT
	seq
    ,writer
    ,title
    ,creat_date
    ,viewCount
FROM post
;

-- 게시물 상세
SELECT
	seq
    ,writer
    ,title
    ,contents
    ,creat_date
    ,viewCount
FROM post
WHERE seq = 1
;

-- 게시물 상세.댓글 
SELECT
	seq
    ,writer
    ,create_date
    ,contents
    ,post_seq
FROM comment
WHERE post_seq = 1
;

-- 대댓글
SELECT
	seq
    ,create_date
    ,writer
    ,contents
    ,comment_seq
FROM recomment
WHERE seq = 8
;

-- 게시물 + 댓글 + 대댓글 + 카테고리  (분류 버튼이나 카테고리 분류를 했을때 이렇게 쿼리를 작성해서 필요한것만 뽑아서 볼수 있게 쿼리문 작성)
SELECT
	a.seq
    ,a.writer
    ,a.title
    ,a.creat_date
    ,a.contents
    ,a.viewCount
	,d.seq
	,d.category
	,d.post_seq
FROM post a
join comment b on b.post_seq = a.seq
join recomment c on c.comment_seq = b.seq
join category d on d.post_seq = a.seq;

-- 운동 그룹 리스트
SELECT
	seq
    ,creator
    ,group_name
    ,sports
    ,location
    ,people_number
    ,startTime
    ,endTime
    ,detail
    ,map
FROM sportsGroup
;

