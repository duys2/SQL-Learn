# 새로운 데이터베이스 my_db 생성
create database my_db;

# my_db 데이터베이스를 사용하도록 설정
use my_db;

# person 테이블 생성. 이 테이블은 개인 ID, 이름, 나이, 주소, 직업을 저장
CREATE TABLE person (
    id INT PRIMARY KEY NOT NULL, # id는 기본키
    name VARCHAR(50) NOT NULL, # NOT NULL: NULL	값을 허용하지 않음
    age INT NOT NULL,
    address VARCHAR(100) NOT NULL,
    job VARCHAR(50) NOT NULL
);

# person 테이블에 10개의 데이터 삽입
INSERT INTO person (id, name, age, address, job) VALUES
(1, '김기태', 27, '서울', '회사원'),
(2, '이창용', 28, '부산', '교사'),
(3, '지공섭', 42, '대구', '의사'),
(4, '나재견', 31, '인천', '변호사'),
(5, '최재훈', 39, '울산', '야구선수'),
(6, '허독수', 25, '평택', '대학생'),
(7, '고진용', 45, '성남', '엔지니어'),
(8, '곽지창', 33, '충청', '경찰'),
(9, '마태수', 29, '안산', '복싱선수'),
(10, '왕석두', 37, '수원', '유튜버');

/* person 테이블의 모든 데이터를 조회
'*'는 모든 열을 의미하며, 이 쿼리는 person 테이블의 모든 행과 모든 열을 반환하여
결과로 person 테이블의 모든 필드(id, name, age, address, job)값이 출력된다. */
SELECT * FROM person;