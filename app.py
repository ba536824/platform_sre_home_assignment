from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def welcome():
    user_agent = request.headers.get('User-Agent')
    return f"Welcome to 2022!\n\nUser-Agent: {user_agent}"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
