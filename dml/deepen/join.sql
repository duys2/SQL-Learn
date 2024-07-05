USE my_db;

# food 테이블 생성
CREATE TABLE food (
    name VARCHAR(50) NOT NULL,
    food_name VARCHAR(50) NOT NULL
);

# 음식 데이터 삽입
INSERT INTO food (name, food_name) VALUES
('김기태', '육회'),
('이창용', '비빔밥'),
('지공섭', '양주'),
('나재견', '라면'),
('최재훈', '불고기'),
('허독수', '치킨'),
('고진용', '짜장면'),
('곽지창', '호두'),
('마태수', '갈비'),
('왕석두', '파인애플'),
('김수현', '김치찜'),
('김기태', '초밥'),
('이창용', '돈까스'),
('최재훈', '떡볶이');

# 일반적으로 INNER JOIN 사용: 만약 person에만 있고 food에는 없다면 결과로 보이지 않음 (교집합 데이터 출력)
# FULL OUTER JOIN 사용 시 NULL값으로 채워서 출력, 그러나 MySQL에서는 지원하지 않음

# 모든 사람 정보 (person)과 모든 음식 정보 (food)가져오기 AS구문으로 별칭을 사용하여 코드 가독성을 향상
SELECT *
FROM person AS P
	INNER JOIN food AS F
	ON P.name = F.name; # 조인 조건: 이름이 같은 사람과 음식만 연결 (완전 일치 조건)

# 별칭 제거
SELECT *
FROM person
	INNER JOIN food
	ON person.name = food.name;

# 30세 미만인 모든 사람 정보(person 테이블)를 가져오기: person 테이블과 food 테이블을 왼쪽 외부 조인(LEFT OUTER JOIN)으로 연결
SELECT *
FROM person
  LEFT OUTER JOIN food
    ON person.name = food.name # 조인 조건: 이름이 같은 사람과 음식만 연결 (완전 일치 조건)
WHERE person.age < 30; # 30세 미만인 사람만

-- 모든 음식 정보(food 테이블)를 가져오기: food 테이블과 person 테이블을 오른쪽 외부 조인(RIGHT OUTER JOIN)으로 연결
SELECT *
FROM food
  RIGHT OUTER JOIN person
    ON food.name = person.name # 조인 조건: 이름이 같은 사람과 음식만 연결 (완전 일치 조건)
WHERE person.age >= 30; # 30세 이상인 사람만 필터링