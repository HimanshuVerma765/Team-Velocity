from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/login", methods=["POST", "GET"])
def login():
    if request.method == "POST":
        username = request.form.get("username")
        password = request.form.get("password")
          # Assuming a form with 'username' field
        if user:
            return redirect(url_for('user', usr=user))  # Redirect to the user route with the username
    return render_template("index.html")

@app.route("/<usr>")
def user(usr):
    return f"Hello, {usr}!"

if __name__ == '__main__':
    app.run(debug=True)
