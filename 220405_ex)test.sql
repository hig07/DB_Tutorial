SELECT * from test;
select DISTINCT col2||col3 from test;
select count(DISTINCT col2||col3) from test; --3

select col2 from test; --4
select count(col2) from test; --3
select DISTINCT col2 from test; --3
select count(DISTINCT col2) from test; --2
select count(col3) from test; --4
--------------------------------------------------------------------------------
SELECT col2||col3 from test
where col3=(
    select col3 
    from sub
    where col4=100
    );
    
SELECT count(col2||col3) from test
where col3=(
    select col3 
    from sub
    where col4=100
    );
    
SELECT count(distinct col2||col3) from test
where col3=(
    select col3 
    from sub
    where col4=100
    );

select col3 from test;
select col2||col3 from test;
select col3 from sub
where col4=100;









