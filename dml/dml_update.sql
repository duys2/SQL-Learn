USE my_db;

# 하나의 필드 수정: 'id'가 12인 레코드의 'age' 필드를 22로 변경
UPDATE person
SET age = 22
WHERE id = 12;

# 여러 필드 수정: 'id'가 10인 레코드의 'age'를 25로, 'job'을 '대학생'으로 변경
UPDATE person
SET age = 25, job = '대학생'
WHERE id = 10;

# 조건부 수정: 'id'가 13 이상인 모든 레코드의 'address'를 '대전'으로 변경
UPDATE person
SET address = '대전'
WHERE id >= 13;