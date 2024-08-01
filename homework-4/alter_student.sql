-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE students
(
    student_id serial,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    birthday date NOT NULL,
    phone varchar(10) NOT NULL,

    CONSTRAINT pk_students_student_id PRIMARY KEY (student_id)
);

SELECT * FROM students;

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE students ADD COLUMN middle_name varchar(100) NOT NULL;

-- 3. Удалить колонку middle_name
ALTER TABLE students DROP COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE students RENAME birthday TO birth_date;

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE students ALTER COLUMN phone SET DATA TYPE varchar(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO students (first_name, last_name, birth_date, phone) VALUES ('Mila', 'Frolova', '1988-05-02', +71111111111);
INSERT INTO students (first_name, last_name, birth_date, phone) VALUES ('Luke', 'Skywalker', '1989-12-08', +72222222222);
INSERT INTO students (first_name, last_name, birth_date, phone) VALUES ('Leeloo', 'Dallas', '1990-09-10', +73333333333);

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE students RESTART IDENTITY;