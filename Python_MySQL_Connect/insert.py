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
       INSERT INTO Student(roll,name)
       VALUES('101','kawser')
"""
mycursor.execute(sqlquery)
mydb.commit()