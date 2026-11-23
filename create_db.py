import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="julfikar999+"
)
print(mydb)
db_name = "python_test_db"

mycursor = mydb.cursor()

sqlquery = "CREATE DATABASE " + db_name
mycursor.execute(sqlquery)