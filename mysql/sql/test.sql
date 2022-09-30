use biscoff;


insert into uploaded(
	type
	,defaultNy
    ,sort
    ,originalName
    ,uuidName
    ,ext
    ,size
    ,delNy
    ,pseq
)

values(
	"image"
    ,0
    ,"image"
)
;

select * from uploaded;



SELECT COUNT(*)
FROM cc a
WHERE 1=1

SELECT
	aa.*
FROM (
	a.seq
    ,a.cc_name
    ,a.useNY
	,a.delNY
	,a.cc_key
	,a.ccg_seq
	,a.createDate
	,a.modiDate
) 



aa
LIMIT #{rowNumToShow} OFFSET #{startRnumForMysql}





select count(ccg_seq)
from cc
where 1=1
	ccg_seq = a.seq
    
    cc에서의 ccg_seq와 ccg a 에서 seq 넘버와 같은거의 count
    

    
    
    
