from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Jenkins CI/CD with Docker Test for Version 02!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5050)  # Chạy trên cổng 5050
