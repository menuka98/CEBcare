import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calender extends StatefulWidget {
  @override
  _Calender createState() => _Calender();
}

class _Calender extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF0A1A1),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  padding: EdgeInsets.only(top: 0.0),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                            },

                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.calendar_today),
                                Text("Something here")
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                          ),
                          Icon(
                              Icons.share
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {},

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.access_time),
                                    Text("Something here")
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                             Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                          onPressed: () {
                                          },
                                          child: Row(

                                            children: <Widget>[
                                              Icon(Icons.pin_drop),
                                              Text("Jaela",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                        onPressed: () {
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            Icon(Icons.pin_drop),
                                            Text("Thudella",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.pin_drop),
                                          Text("Ekala",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                      child: FlatButton(
                                        onPressed: () {
                                        },
                                        color: Colors.white,
                                        child:Text("REMIND ME",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                                        textColor: Color(0xffF0A1A1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(15),
                                          //side: BorderSide(color: Colors.orange[800])
                                        ),
                                        padding: EdgeInsets.symmetric(vertical:10.0,horizontal: 50),
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    children: <Widget>[
                      SfCalendar(
                        view: CalendarView.month,
                        backgroundColor: Color(0xffa92518),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                    child: Column(
                      children: <Widget>[

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("DATES MAYBE SUBJECTED TO", style: TextStyle(color: Colors.black, fontSize: 18),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("CERTAIN CHANGES DUE TO", style: TextStyle(color: Colors.black, fontSize: 18),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("UNAVOIDABLE REASONS.", style: TextStyle(color: Colors.black, fontSize: 18),)
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
