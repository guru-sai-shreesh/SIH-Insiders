
import 'dart:ui';

import 'package:ev_solution_frontend/API.dart';
import 'package:ev_solution_frontend/stationAdmin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:ev_solution_frontend/theme.dart';


import 'package:flutter/material.dart';

import 'customerUI.dart';

class MainPage extends StatelessWidget {
  String stationID="";


  String carNo ="";

  final stationIDController=TextEditingController();

  final carNoController=TextEditingController();

  MainPage({Key? key}) : super(key: key);


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
                                child: Text("Login using Car Number",
                                    style: TextStyle(
                                      fontSize: 35,
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
                                    carNo = value;
                                  },
                                  autofocus: true,
                                  controller: carNoController,
                                  decoration: InputDecoration(
                                    icon:  Icon(Icons.car_rental, color: Color(0xff224597)),
                                    hintText: 'Car Number',
                                    fillColor: Colors.white,
                                    filled: true,),
                                ),
                                decoration: BoxDecoration (
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.white
                                ),
                                padding: EdgeInsets.fromLTRB(16.0, 0, 5.0, 0),
                              ),
                              const SizedBox(
                                height: 20,
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

                                    if (carNo.length==10){
                                      Navigator.push(
                                          context, MaterialPageRoute(builder: (context) => CustomerPage(carNo: carNo)));

                                    }

                                    carNoController.clear();


                                  },
                                  child: Text(
                                    "Car number Login",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.blueAccent
                                    ),
                                  )
                              ),
                              const SizedBox(
                                height: 100,
                              ),


                              Center(
                                child: Text("Charge Station Admin",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.left),

                              ),

                              const SizedBox(
                                height: 20,
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
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => HomePage(stationID:stationID)));

                                    stationIDController.clear();

                                  },
                                  child: Text(
                                    "Station Admin Login",
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

