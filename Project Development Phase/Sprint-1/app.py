from flask import Flask,render_template, flash,redirect, url_for,request
app = Flask(__name__)
app.secret_key="hii"

@app.route("/")
def Register_page():
	return render_template("index.html")
	



@app.route("/about")                                      
def dashboard_adding_items():
	return render_template("about.html")


@app.route("/list")
def list():
   return render_template("list.html")
