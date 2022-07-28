-- biscoff database를 사용하겠다. (한 편집창 제일 상단에 한번만 작성해주면 된다.)
use biscoff;

-- 중요 별 백개*****************************
-- 테이블 수정 전에 항상 꼭 반드시 진짜로 ER부터 수정
-- 중요 별 백개*****************************


-- 전체 컬럼 조회
-- * = 아스테리크 all 가급적 사용 x
SELECT * FROM member;
-- 컬럼 추가
ALTER TABLE member2 ADD COLUMN name VARCHAR(45);
-- ALTER TABLE 테이블명 ADD COLUMN 칼럼명 칼럼타입;
-- 칼럼 name 다음에 추가
ALTER TABLE member2 ADD COLUMN nameEng VARCHAR(45) AFTER name;
ALTER TABLE member2 ADD COLUMN pet VARCHAR(45) AFTER name;

-- 컬럼 변경 (컬럼 타입을 45에서 100으로 변경)
ALTER TABLE member2 MODIFY COLUMN name INT;

-- 컬럼 이름 변경
-- 기존 컬럼명 변경 컬럼명 
ALTER TABLE member2 CHANGE COLUMN name nickname VARCHAR(45);
ALTER TABLE member2 CHANGE COLUMN pet newPet VARCHAR(45); 

-- 컬럼 삭제
ALTER TABLE member2 DROP COLUMN newPet;

-- row 삭제
-- 명령어 먼저 쓰고 tabe명이나 조건을 작성해준다.
DELETE FROM member2 WHERE seq = 2;

-- commit/rollback

-- 컬럼 내용 수정
-- seq 1번 row에 name, nameEng 컬럼 내용을 바꾼다
UPDATE member2 SET
name = "wookyeong"
, nameEng = "Great"
WHERE seq = 1;