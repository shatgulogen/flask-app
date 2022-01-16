from flask import Flask, redirect
import os

from controllers.profile_controller import profile_controller
from controllers.user_controller import user_controller
from controllers.session_controller import session_controller

app = Flask(__name__)

SECRET_KEY = os.environ.get("SECRET_KEY", "password")
app.config['SECRET_KEY'] = SECRET_KEY


@app.route('/')
@app.route('/list')
def list():
    return redirect('/profiles')


# Register Controllers
app.register_blueprint(profile_controller)
app.register_blueprint(session_controller)
app.register_blueprint(user_controller)
# TODO don't forget to register controllers

if __name__ == '__main__':
    app.run(debug=True)
