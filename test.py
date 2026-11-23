import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "julfikar999+"
)
print(mydb)