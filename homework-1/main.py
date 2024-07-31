"""Скрипт для заполнения данными таблиц в БД Postgres."""
import csv
import psycopg2

from dotenv import load_dotenv
from settings import DB_TABLES

load_dotenv()


def add_data_tables(cursor, path_file: str, name_table: str):
    """
    Функция для заполнения одной таблицы
    """
    with open(path_file, encoding="utf-8") as f:
        reader = csv.reader(f)
        header = next(reader)
        values = ', '.join(["%s"] * len(header))
        add_data = f"INSERT INTO {name_table} VALUES ({values})"
        for row in reader:
            cursor.execute(add_data, row)


def main():
    """
    Основная функция выполнения программы(заполнение таблиц данными)
    """
    conn = psycopg2.connect(
        host="Localhost",
        database='north',
        user="maria",
        password='maria'
    )
    try:
        with conn:
            with conn.cursor() as cur:
                for name_table, path_file in DB_TABLES:
                    add_data_tables(cur, path_file, name_table)
    finally:
        conn.close()


if __name__ == '__main__':
    main()
