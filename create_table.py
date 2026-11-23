import mysql.connector
db_name = "python_test_db"

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="julfikar999+",
    database = db_name
)


mycursor = mydb.cursor()

sqlquery = """
        CREATE TABLE Student
        (
        roll varchar(4),
        name varchar(50)
        )
"""
mycursor.execute(sqlquery)