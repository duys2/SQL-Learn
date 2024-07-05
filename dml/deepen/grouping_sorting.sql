USE my_db;

# 데이터를 '주소' 기준으로 그룹핑 후 그룹별 인원수 구하기
SELECT address, COUNT(*)
FROM person
GROUP BY address;

# 데이터를 '주소' 기준으로 그룹핑 후 인원수가 2이상인 그룹 필터링
SELECT address, COUNT(*)
FROM person
GROUP BY address
HAVING COUNT(*) >= 2;

# 나이가 많은 순(내림차순 정렬)으로 조회
SELECT * FROM person
ORDER BY age DESC;

# 나이가 적은 순(기본값: 오름차순 정렬)으로 조회
SELECT * FROM person
ORDER BY age;

# 주소별로 거주하는 사람 수 집계
SELECT address, COUNT(*)
FROM person
WHERE age >= 35 # 필터링: 35세 이상
GROUP BY address
HAVING COUNT(*) = 1 # 필터링: 한 명만 거주하는 주소
ORDER BY address DESC; # 주소를 내림차순으로 정렬