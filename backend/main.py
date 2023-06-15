from datetime import datetime

from flask import Flask, render_template, request
from flask_mysqldb import MySQL

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Chandu@2003'
app.config['MYSQL_DB'] = 'ev_sol'

mysql = MySQL(app)


@app.route("/new/")
def addNewTransation():
    urlargs = request.args.to_dict()

    cursor = mysql.connection.cursor()

    carNumber= urlargs['carnumber']
    stationID= int(urlargs['stationID'])
    startCharge = float(urlargs['start'])
    endCharge= float(urlargs['end'])
    chargeKWH = float(urlargs['charge'])
    amount = float(urlargs['amount'])

    modelID = int(urlargs['modelid'])



    cursor.execute(f''' INSERT INTO transactions VALUES('{carNumber}',{stationID},{startCharge},{endCharge},{chargeKWH},{amount},0,{modelID},null,null) ''')

    mysql.connection.commit()

    cursor.close()

    return "Transaction added successfully"


@app.route("/show-route/")
def analysis():
    pass

app.run(host='localhost', port=5000)