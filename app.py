from flask import Flask
import webbrowser
import datetime

app = Flask(__name__)
@app.route('/Maddy')
def index():
    return "Hello World from Maddy!"

@app.route("/datetime")
def datetime():
    return f"Current date and time: {datetime.datetime.now()}"

app.run(host="localhost", port=5000, debug=True)
