from pathlib import Path

ROOT_PATH = Path(__file__).parent
CUSTOMERS_PATH = Path.joinpath(ROOT_PATH, "north_data", "customers_data.csv")
EMPLOYEES_PATH = Path.joinpath(ROOT_PATH, "north_data", "employees_data.csv")
ORDERS_PATH = Path.joinpath(ROOT_PATH, "north_data", "orders_data.csv")

DB_TABLES = [
    ('customers', CUSTOMERS_PATH),
    ('employees', EMPLOYEES_PATH),
    ('orders', ORDERS_PATH),
]
