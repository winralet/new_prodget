from flask import Flask
from data import db_session
from data.users import User

app = Flask(__name__)

@app.route('/')
def index():
    return 'dddd'

if __name__ == '__main__':
    app.run(host='0.0.0.0', post=5000)