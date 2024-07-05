# 내장 함수

USE my_db;

# 모든 사람의 나이 합계
SELECT SUM(age) FROM person;

# 모든 사람의 평균 나이
SELECT AVG(age) FROM person;

# 나이는 음수가 될 수 없으므로 절댓값으로 변환 후 삽입
INSERT INTO person (id, name, age, address, job)
VALUES (11, '김수현', ABS(-30), '서울', '기자');

# 입력된 값보다 작거나 같은 최대 정수를 반환: 양수의 경우 소수점 이하의 값 절사 (버림)
SELECT FLOOR(AVG(age)) FROM person;

# 가장 나이가 많은 사람의 나이
SELECT MAX(age) FROM person;

# 가장 나이가 적은 사람의 나이
SELECT MIN(age) FROM person;

# 'age' 열에 있는 값의 개수를 반환 (중복 포함)
SELECT COUNT(age) FROM person;

# 'age' 열에 있는 고유한 값의 개수를 반환 (중복 제외)
SELECT COUNT(DISTINCT age) FROM person;

# 두 문자열 연결: "고진용은 성남에 살고 있습니다."
SELECT CONCAT(name, '은 ', address, '에 살고 있습니다.')
FROM person WHERE id = 7;

# 'address' 열의 값과 해당 값의 길이 출력
SELECT address, CHAR_LENGTH(address) FROM person;

# 'address' 열의 값에서 '성'을 '경'으로 변경
SELECT REPLACE(address, '성', '경') FROM person;

# 현재 날짜와 시간 출력
SELECT NOW();