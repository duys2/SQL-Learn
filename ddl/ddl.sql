USE my_db;

# 'students'테이블 생성
CREATE TABLE students (
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  address VARCHAR(255) NOT NULL
);

# 'person'테이블에 'college'라는 이름의 열을 추가: 이 열은 VARCHAR(50) 데이터 타입 사용
ALTER TABLE person ADD college VARCHAR(50);

# 'college'열 이름을 'university'로 변경
ALTER TABLE person RENAME COLUMN college TO university;

# 'university'열 데이터 타입을 VARCHAR(25)로 변경: (※주의) 데이터 타입 변경 시 기존 열에 저장된 데이터가 새 데이터 타입에 맞는지 확인
ALTER TABLE person MODIFY COLUMN university VARCHAR(25);

# 'person'테이블에서 'university'열 삭제
ALTER TABLE person DROP COLUMN university;

# 'students'테이블 삭제
DROP TABLE students;

# 'food'테이블의 모든 데이터 삭제
TRUNCATE TABLE food;

# 'person'테이블에 'name'열을 기준으로 하는 'person_index'인덱스 생성
CREATE INDEX person_index ON person (name);

# 'person'테이블에서 'person_index'인덱스 삭제
ALTER TABLE person DROP INDEX person_index;