USE my_db;

# 데이터 삽입: id가 11인 서울에 사는 30세 아나운서 박찬호
INSERT INTO person (id, name, age, address, job)
VALUES (11, '박찬호', 30, '서울특별시', '아나운서'); # 숫자는 '' 사용하지 않음

# 여려 행 동시 삽입
INSERT INTO person (id, name, age, address, job)
VALUES (12, '박지훈', 27, '서울특별시', '가수'), # , 개행
(13, '이천수', 36, '서울특별시', '축구선수');

# 조회 후 삽입: name이 '이천수'인 데이터를 조회 후 id 14로 복사
INSERT INTO person (id, name, age, address, job)
SELECT 14, name, age, address, job
FROM person WHERE name = '이천수';