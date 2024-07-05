USE my_db;

# 이름, 나이, 나이의 평균 조회
SELECT name, age, (SELECT AVG(age) FROM person) AS avg_age
FROM person
WHERE age < 30;

# 'food' 테이블에서 음식 이름이 '육회' 또는 '라면'인 데이터 추출
SELECT *
FROM (
		SELECT name, food_name
		FROM food
		WHERE food_name IN ('육회', '라면')
	 ) as vt; # 서브 쿼리의 결과를 가상 테이블처럼 사용
     
# WHERE절에 해당하는 이름을 가진 사람의 정보 뽑아내기
SELECT name, age, address, job
FROM person
WHERE name IN ( # 'food' 테이블에서 음식 이름이 '김치찜' 또는 '갈비'인 레코드의 이름만 추출해서
	SELECT name
	FROM food
	WHERE food_name IN ('김치찜', '갈비', '양주', '호두')
);