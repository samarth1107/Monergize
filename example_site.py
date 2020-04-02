from flask import Flask,render_template,url_for,flash,redirect
from flask_mysqldb import MySQL
from sign_up import LoginForm

app = Flask(__name__ ,template_folder='templates' , static_folder='static')
app.config['SECRET_KEY'] = '5791628bpowerb0b13ce0c676dfde280ba245'


app.config['MYSQL_HOST']='localhost'
app.config['MYSQL_USER']='root'
app.config['MYSQL_PASSWORD']='1107'
app.config['MYSQL_DB']='bank'
mysql = MySQL(app)


@app.route("/")
def hello():
    return render_template('eg.html',title="Home page")

@app.route("/home")
def home():
    return render_template('home.html',title="Home page 2")


@app.route("/login", methods=['GET', 'POST'])
def login():
    form = LoginForm()

    cur = mysql.connection.cursor()
    cur.execute("SELECT email FROM bank.customer_login_detail;")
    dbemails = list(map(lambda x: x[0], (cur.fetchall())))
    cur.execute("SELECT password FROM bank.customer_login_detail;")
    dbpasswords = list(map(lambda x: x[0], (cur.fetchall())))
    cur.close()

    if form.validate_on_submit():
        if form.email.data in dbemails and dbpasswords[dbemails.index(form.email.data)]==form.password.data:
            flash('Logged in successfully', 'success')
            return redirect(url_for('home'),)
        else:
            flash('Login Unsuccessful. Please check username and password', 'danger')

    return render_template('sign_up.html', title='Login', form=form)

if __name__ == '__main__':
    app.run(debug=True)