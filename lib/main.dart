import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TimeandDate(),
    );
  }
}

class TimeandDate extends StatefulWidget {
  const TimeandDate({super.key});

  @override
  State<TimeandDate> createState() => _TimeandDateState();
}

class _TimeandDateState extends State<TimeandDate> {
  String year = "";
  String month = "";
  String day = "";
  String dayname = "";
  String houre = "";
  String min = "";
  String sec = "";

  changetime() {
    Timer.periodic(Duration(seconds: 1), (Timer) {
      setState(() {
        year = DateTime.now().year.toString();
        month = DateTime.now().month.toString();
        switch (month) {
          case '1':
            month = "janury";
            break;
          case '2':
            month = "febrary";
            break;
          case '3':
            month = "march";
            break;
          case '4':
            month = "april";
            break;
          case '5':
            month = "may";
            break;
          case '6':
            month = "jun";
            break;
          case '7':
            month = "july";
            break;
          case '8':
            month = "augest";
            break;
          case '9':
            month = "september";
            break;
          case '10':
            month = "octobre";
            break;
          case '11':
            month = "november";
            break;
          case '12':
            month = "december";
            break;
        }
        day = DateTime.now().day.toString();
        dayname = DateTime.now().day.toString();
        switch (dayname) {
          case "1":
            dayname = 'sunday';
            break;
          case "2":
            dayname = 'monday';
            break;
          case "3":
            dayname = 'tursday';
            break;
          case "4":
            dayname = 'tuesday';
            break;

          case "5":
            dayname = 'wendsday';
            break;
          case "6":
            dayname = 'friday';
            break;
          case "8":
            dayname = 'saturday';
            break;
        }
        houre = DateTime.now().hour.toString();
        min = DateTime.now().minute.toString();
        
        
        sec = DateTime.now().second.toString();
      });
    });
  }

  void initState() {
    super.initState();
    changetime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(
          "Simple App",
          style: TextStyle(color: Colors.white,fontSize: 35,fontFamily: "font2" ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
          colors: [Color(0xff4ca1af), Color(0xffc4e0e5)],
          stops: [0, 1],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        )
      
      
      
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      body: Container(
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Today's date is $dayname",
                style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,fontFamily: "font2"),
              ),
              Text(
                "$month  , $year",
                style: TextStyle(fontSize: 34,wordSpacing: 10,color: Colors.white,fontFamily: "font2"),
              ),
              Text(
                "$houre : $min : $sec",
                style: TextStyle(fontSize: 35,color: Colors.grey[700], fontFamily: "font2"),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
          colors: [Color(0xff77a1d3), Color(0xff79cbca), Color(0xffe684ae)],
          stops: [0, 0.5, 1],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        )
      
          ),
      ),
    );
  }
}
