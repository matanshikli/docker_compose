from flask import Flask, render_template
from flask_mysqldb import MySQL
import MySQLdb.cursors
import mysql.connector

app = Flask(__name__)
#code for connection
#MySQL Hostname

mydb = mysql.connector.connect(
  host="172.20.0.2",               #hostname
  user="root",                   # the user who has privilege to the db
  passwd="Password1!",               #password for user
  database="testdata",               #database name
    auth_plugin = 'mysql_native_password',

)
app.config['MYSQL_HOST'] = '172.20.0.2'
#MySQL username
app.config['MYSQL_USER'] = 'root'
#MySQL password here in my case password is null so i left empty
app.config['MYSQL_PASSWORD'] = 'Password1!'
#Database name In my case database name is projectreporting
app.config['MYSQL_DB'] = 'testdata'



mysql = MySQL(app)
@app.route('/')
@app.route('/projectlist',methods=['GET','POST'])
def projectlist():
    #creating variable for connection
    cursor=mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    #executing query
    cursor.execute("SELECT * FROM DATE;")
    #fetching all records from database
    data=cursor.fetchall()
    #returning back to projectlist.html with all records from MySQL which are stored in variable data
    return render_template("base.html",data=data)
if __name__ == '__main__':
    app.run(port=5000,debug=True)