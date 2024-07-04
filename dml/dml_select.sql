# 작업할 데이터베이스 설정
USE my_db;

# person 테이블 내 모든 열 조회
SELECT * FROM person;
-- select * from person; # 가독성과 표준 관행을 위해 키워드는 대문자 사용

# 이름과 직업만 조회
SELECT name, job FROM person;

# 별칭 사용: 이름에 해당하는 열을 column1로 나이는 column2로 변경 후 출력
SELECT name AS column1, age AS column2 FROM person;

# 조건 사용: 나이가 29보다 많은 사람의 이름만 출력
SELECT name FROM person WHERE age > 29;

# 중복 제거: 주소를 출력하되 중복되지 않게 출력
SELECT DISTINCT address FROM person;