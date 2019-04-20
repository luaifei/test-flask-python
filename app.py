from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    print("test log")
    return "I'm fine! Thank you! And you?"


if __name__ == '__main__':
    app.run()
