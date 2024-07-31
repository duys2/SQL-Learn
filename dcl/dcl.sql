USE my_db;

# 특정 사용자의 특정 테이블에 대한 권한 박탈
-- REVOKE [권한] ON [테이블명] FROM [권한을 박탈할 사용자];

# 특정 사용자에게 특정 테이블에 대한 권한 부여
-- GRANT [권한] ON [테이블명] TO [권한을 받을 사용자];

# 사용자 'steve'의 'person' 테이블에 대한 SELECT 권한 박탈
REVOKE SELECT ON person FROM 'steve';

# 사용자 'james'에게 'person' 테이블에 대한 INSERT 권한 부여
GRANT INSERT ON person TO 'james';

# COMMIT 문법
COMMIT;

# ROLLBACK 문법
ROLLBACK;

# ----- COMMIT 예시 ----- #
# 트랜잭션 시작
START TRANSACTION;

# person 테이블에 새로운 데이터 삽입
INSERT INTO person (id, name, age) VALUES (1, 'Alice', 30);

# 변경 사항 저장
COMMIT;

# ----- ROLLBACK 예시 (에러가 발생했을 때 수행) ----- #
# 트랜잭션 시작
START TRANSACTION;

# person 테이블에 새로운 데이터 삽입
INSERT INTO person (id, name, age) VALUES (2, 'Bob', 25);

# 오류를 강제로 발생시키기 위한 잘못된 SQL 문 작성 (예시를 위해 잘못된 테이블명 사용)
INSERT INTO wrong_table (id, name, age) VALUES (3, 'Charlie', 40);

# 오류가 발생하여 ROLLBACK 수행
ROLLBACK;