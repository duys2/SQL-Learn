# 정렬 설정 확인 쿼리문

# 데이터베이스의 정렬 설정 확인
SELECT SCHEMA_NAME, DEFAULT_COLLATION_NAME 
FROM information_schema.SCHEMATA 
WHERE SCHEMA_NAME = 'movieblog'; -- ''안 DB명

# 테이블의 정렬 설정 확인
SHOW TABLE STATUS 
WHERE Name = 'post'; -- ''안 테이블명 입력

# 컬럼의 정렬 설정 확인
SHOW FULL COLUMNS FROM post; -- 테이블명 입력