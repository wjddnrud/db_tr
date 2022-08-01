-- biscoff database를 사용하겠다. (한 편집창 제일 상단에 한번만 작성해주면 된다.)
USE biscoff;

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
UPDATE member SET
name = "wookyeong"
, job = "full stack developer"
WHERE seq = 1;


-- where
SELECT * FROM member
WHERE 1=1
	-- AND name like 'wook%'
	-- AND name like '%ng'
    AND name like '%ky%'
    ;

 
SELECT * FROM member
WHERE 1=1
	AND name like '%s%'
    ;
    
    SELECT * FROM member
WHERE 1=1
	-- way_to_regist = 0
    -- AND way_to_regist > 1
    -- AND way_to_regist >=1
    AND way_to_regist between 0 and 2
    ;

SELECT * FROM member
WHERE 1=1
	-- AND name is null
    AND name = null
    ;

SELECT * FROM member
WHERE 1=1
	AND name = ""
    ;

SELECT * FROM member;

-- 임의의 테이블 생성 자동 seq 조건 + 작성, 생성 시간 현재시간으로 자동 입력(메세지) + 제목 공란일시 제목없음 자동 입력
-- ON UPDATE NOW(); 수정 시간으로 변경 저장/ 디폴트 값이랑 따로 만들어주면 둘다 확인 가능 둘다 하나에 넣으면 최초 저장 시간은 수정 시간으로 덮어써짐!
CREATE TABLE post2(
	`seq` INT NOT NULL AUTO_INCREMENT,
    `createTime` TIMESTAMP NOT NULL DEFAULT NOW(),
    `editTime` TIMESTAMP NOT NULL ON UPDATE NOW(),
    `title` VARCHAR(45) NOT NULL DEFAULT '제목없음',
PRIMARY KEY(`seq`)
);



SELECT * FROM post2;