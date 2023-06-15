
import 'dart:ui';

import 'package:ev_solution_frontend/API.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:ev_solution_frontend/theme.dart';


import 'package:flutter/material.dart';

class CustomerPage extends StatelessWidget {
  String stationID="";
  String startCharge="";
  String endCharge="";
  String chargedKWH="";
  String amount="";
  String modelID="";

  final carNo;

  final stationIDController=TextEditingController();
  final startChargeController=TextEditingController();
  final endChargeController=TextEditingController();
  final chargedKWHController=TextEditingController();
  final amountController=TextEditingController();
  final modelIDController=TextEditingController();

  final carNoController =TextEditingController();

  CustomerPage({Key? key, required this.carNo}) : super(key: key);

  String loginID= "";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: blueColor,


        body: SafeArea(child : SingleChildScrollView(
    child: Container(
      height: MediaQuery. of(context). size. height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3,0.5,0.75,0.9,1.0],
                    colors: [Colors.blue,Colors.yellow,Colors.green,Colors.red,Colors.purple,])
            ),
            child: Column(

                crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 40,
              ),

              SafeArea(
                  child: Center(
                      child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(children: [
                              const SizedBox(
                                height: 40,
                              ),

                              Center(
                                child: Text(carNo,
                                    style: TextStyle(
                                      fontSize: 50,
                                      color: whiteColor,
                                    ),
                                    textAlign: TextAlign.left),

                              ),

                              const SizedBox(
                                height: 30,
                              ),






                              Container(

                                child: TextFormField(
                                  onChanged: (value) {
                                   stationID = value;
                                  },

                                    autofocus: false,
                                  controller: stationIDController,
                                    decoration: InputDecoration(
                                      icon:  Icon(Icons.lock, color: Color(0xff224597)),
                                      hintText: 'Station ID',
                                      fillColor: Colors.white,
                                      filled: true,),),
                                decoration: BoxDecoration (
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.white

                                ),
                                padding: EdgeInsets.fromLTRB(16.0, 0, 5.0, 0),
                              ),
                              const SizedBox(
                                height: 20,
                              ),



                              Container(

                                child: TextFormField(
                                  onChanged: (value) {
                                    startCharge = value;
                                  },

                                  autofocus: false,
                                  controller: startChargeController,
                                  decoration: InputDecoration(
                                    icon:  Icon(Icons.battery_charging_full, color: Color(0xff224597)),
                                    hintText: 'Starting Charge',
                                    fillColor: Colors.white,
                                    filled: true,),),
                                decoration: BoxDecoration (
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.white

                                ),
                                padding: EdgeInsets.fromLTRB(16.0, 0, 5.0, 0),
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              Container(

                                child: TextFormField(
                                  onChanged: (value) {
                                    endCharge = value;
                                  },

                                  autofocus: false,
                                  controller: endChargeController,
                                  decoration: InputDecoration(
                                    icon:  Icon(Icons.battery_charging_full, color: Color(0xff224597)),
                                    hintText: 'Ending Charge',
                                    fillColor: Colors.white,
                                    filled: true,),),
                                decoration: BoxDecoration (
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.white

                                ),
                                padding: EdgeInsets.fromLTRB(16.0, 0, 5.0, 0),
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              Container(

                                child: TextFormField(
                                  onChanged: (value) {
                                    chargedKWH = value;
                                  },

                                  autofocus: false,
                                  controller: chargedKWHController,
                                  decoration: InputDecoration(
                                    icon:  Icon(Icons.charging_station, color: Color(0xff224597)),
                                    hintText: 'Charged KWH',
                                    fillColor: Colors.white,
                                    filled: true,),),
                                decoration: BoxDecoration (
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.white

                                ),
                                padding: EdgeInsets.fromLTRB(16.0, 0, 5.0, 0),
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              Container(

                                child: TextFormField(
                                  onChanged: (value) {
                                    amount = value;
                                  },

                                  autofocus: false,
                                  controller: amountController,
                                  decoration: InputDecoration(
                                    icon:  Icon(Icons.money, color: Color(0xff224597)),
                                    hintText: 'Amount',
                                    fillColor: Colors.white,
                                    filled: true,),),
                                decoration: BoxDecoration (
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.white

                                ),
                                padding: EdgeInsets.fromLTRB(16.0, 0, 5.0, 0),
                              ),

                              const SizedBox(
                                height: 20,
                              ),

                              Container(

                                child: TextFormField(
                                  onChanged: (value) {
                                    modelID = value;
                                  },

                                  autofocus: false,
                                  controller: modelIDController,
                                  decoration: InputDecoration(
                                    icon:  Icon(Icons.lock, color: Color(0xff224597)),
                                    hintText: 'Model ID',
                                    fillColor: Colors.white,
                                    filled: true,),),
                                decoration: BoxDecoration (
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.white

                                ),
                                padding: EdgeInsets.fromLTRB(16.0, 0, 5.0, 0),
                              ),






                              const SizedBox(
                                height: 50,
                              ),

                              ElevatedButton(

                                  style: ElevatedButton.styleFrom(

                                      elevation: 30,
                                      primary: Colors.white70,
                                      minimumSize: Size.fromHeight(60),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                      )
                                  ),

                                  onPressed: () async{
                                    var response=sendData(carNo, stationID, startCharge, endCharge, chargedKWH, amount, modelID);
                                    print(response);
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: const Text('Success'),
                                        content: const Text('Transaction added to database successfully'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(context, 'Cancel'),
                                            child: const Text('Dismiss'),
                                          ),

                                        ],
                                    ));
                                    carNoController.clear();

                                    startChargeController.clear();
                                    endChargeController.clear();
                                    chargedKWHController.clear();
                                    amountController.clear();
                                    modelIDController.clear();

                                  },
                                  child: Text(
                                    "Done",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.blueAccent
                                    ),
                                  )
                              ),
                              const SizedBox(
                                height: 100,
                              ),
                              Text("This app is made by Chandrashekar Ollala",
                              )

                            ]),



                          )))),
            ]),

          ),
    )));
  }
}

