USE my_db;

# id가 14인 데이터 삭제
DELETE FROM person
WHERE id=14;

# id가 11부터 13까지인 데이터 삭제
DELETE FROM person
WHERE id BETWEEN 11 AND 13;

# 모든 데이터 삭제 (주의!)
-- DELETE FROM person;