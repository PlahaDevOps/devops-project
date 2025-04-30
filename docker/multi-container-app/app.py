from flask import Flask
import psycopg2

app = Flask(__name__)

@app.route('/')
def home():
    conn = psycopg2.connect(
        host="db", dbname="postgres", user="postgres", password="postgres"
    )
    cur = conn.cursor()
    cur.execute("SELECT '🧠 Connected to Postgres!'")
    msg = cur.fetchone()[0]
    conn.close()
    return msg

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
