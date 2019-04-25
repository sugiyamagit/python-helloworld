# -*- coding: utf-8 -*-

from flask import Flask
from flask import jsonify

app = Flask(__name__)
app.config["JSON_AS_ASCII"] = False
app.config["JSON_SORT_KEYS"] = False


@app.route("/")
def index():
    return "hello RollingUpdate!"


@app.route("/hello")
def hello():
    data = [
        {"name": "flask"},
        {"wsgi": "gunicorn"}
    ]
    return jsonify({
        "status": "ok",
        "data": data
    })


if __name__ == "__main__":
    app.run()
