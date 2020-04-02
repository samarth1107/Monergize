from example_site import mysql,app
from flask_login import UserMixin

with app.app_context():
    ###### User details
    cur = mysql.connection.cursor()
    cur.execute("SELECT Customer_id FROM bank.customer_login_detail;")
    dbcustomer_id = list(map(lambda x: x[0], (cur.fetchall())))
    cur.execute("SELECT email FROM bank.customer_login_detail;")
    dbemails = list(map(lambda x: x[0], (cur.fetchall())))
    cur.execute("SELECT password FROM bank.customer_login_detail;")
    dbpasswords = list(map(lambda x: x[0], (cur.fetchall())))
    cur.close()
    #######

#This is for user class
class User(UserMixin):

    def __repr__(self):
        return f"User('{self.id}', '{self.email}', '{self.password}')"

    def __init__(self, id):
        self.id = id
        self.email = dbemails[dbcustomer_id.index(int(id))]

def request_User_detail(id):
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM bank.customer_personal_detail;")
    #id,name,email,house_no,sector,city,state,pin_code,age,gender,dob,father_name,mother_name = list(map(lambda x: x[0],x[1],x[2],x[3] (cur.fetchall())))
    print((cur.fetchall())[0])
    cur.close()
