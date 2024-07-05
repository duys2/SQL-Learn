USE my_db;

# 30세 미만인 사람과 35세 초과인 사람의 이름과 나이를 가져오고 UNION 을 사용하여 중복된 레코드 제거
SELECT name, age FROM person WHERE age < 30
UNION
SELECT name, age FROM person WHERE age > 35;

# 30세 미만인 사람과 35세 초과인 사람의 이름과 나이를 가져오고, UNION ALL 을 사용하여 모든 레코드 가져오기
SELECT name, age FROM person WHERE age < 30
UNION ALL
SELECT name, age FROM person WHERE age > 35;