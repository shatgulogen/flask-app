from flask import Flask
import os

app = Flask(__name__)

DB_URL = os.environ.get("DATABASE_URL", "dbname=flask_app")


@app.route('/')
def index():
    return 'Hello, world!'


if __name__ == "__main__":
    app.run(debug=True)
