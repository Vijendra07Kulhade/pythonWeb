from flask import Flask

app = Flask(__name__)
@app.route('/home')
def home():
    return "I am home!!"

if __name__=="__main__":
    app.run()