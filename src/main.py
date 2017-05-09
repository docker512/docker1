from flask import Flask
import redis
import time
app = Flask(__name__)

count = 0

r = redis.StrictRedis(host='redis', port=6379, db=0)

@app.route("/")
def index():

    global r
        
    counter = r.rpush('visits', time.time())

    return "You have accessed this website {count} times".format(count=r.llen('visits'))

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
