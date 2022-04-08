CREATE TABLE BOARD 
(
  NO NUMBER PRIMARY KEY 
, SUBJECT VARCHAR2(255) NOT NULL 
, COLUMN2 NUMBER DEFAULT 0 
, COLUMN3 VARCHAR2(255) 
, CREATE_DATE TIMESTAMP 
);

select * from board
order by no;

delete from board
where no in(1, 2, 3);
commit;

select * from board
where no BETWEEN 1 and 10
order by no desc; --10개 만큼 나오진 않는다

select rownum, board.* from board
order by no desc;

select * from board
where rownum between 1 and 20
--where rownum between 11 and 20 
--원래 가지고 있던 컬럼이 아니기 때문에 
--건너뛴 rownum 불가능
order by no desc;
--따라서 인라인 뷰를 활용
select * 
from (
    select rownum rnum, b.* 
    from (
        select * 
        from board 
        order by no desc
        ) b
    )
where rnum between 6 and 14;
--------------------------------------------------------------------------------
CREATE SEQUENCE SEQ_TEST 
INCREMENT BY 1 START WITH 1;

SELECT seq_test.currval from dual;
SELECT seq_test.nextval from dual;
--seq_test.currval : 현재 시퀀스 정보
--seq_test.nextval : 다음 값으로 새로운 시퀀스 생성

drop SEQUENCE SEQ_TEST;
--------------------------------------------------------------------------------
