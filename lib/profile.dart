import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {

  @override
  _Profile createState() => new _Profile();
}

class _Profile extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 843.0,
                    width: double.infinity,
                    color: Color(0xffF0A1A1),
                  ),
                  Positioned(
                      top: -20.0,
                      right: -60.0,
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(320),
                            color: Color(0xff9C3030)
                        ),
                      )
                  ),
                  Positioned(
                      top: -20.0,
                      right: -10.0,
                      child: Container(
                        height:1500.0,
                        width: 1800.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(400),
                            color: Colors.white
                        ),
                      )
                  ),
                  Positioned(
                    top: 285.0,
                    right: 0.0,
                    child: Container(
                      height: 600.0,
                      width: 500.0,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(320),
                          color: Color(0xff9C3030)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 220.0,
                    left: 30.0,
                    child: Opacity(
                      opacity: .5,
                      child: Container(
                        height: 460.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white70
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 0.0,height: 430,),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(300),
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/myAvatar.png'),
                            )
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 300.0,
                    left: 72.0,
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Positioned(
                    top: 325.0,
                    left: 70.0,
                    child: Opacity(
                      opacity: .5,
                      child: Container(
                        height: 45.0,
                        width: 275.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white70
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 340.0,
                    left: 85.0,
                    child: Text(
                      "M. L. M. P. Perera",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Positioned(
                    top: 390.0,
                    left: 72.0,
                    child: Text(
                      "Billing Account",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Positioned(
                    top: 415.0,
                    left: 70.0,
                    child: Opacity(
                      opacity: .5,
                      child: Container(
                        height: 45.0,
                        width: 275.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white70
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 430.0,
                    left: 85.0,
                    child: Text(
                      "1234567890",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Positioned(
                    top: 480.0,
                    left: 72.0,
                    child: Text(
                      "Mobile Number",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Positioned(
                    top: 505.0,
                    left: 70.0,
                    child: Opacity(
                      opacity: .5,
                      child: Container(
                        height: 45.0,
                        width: 275.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white70
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 520.0,
                    left: 85.0,
                    child: Text(
                      "0712345678",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),

                  Positioned(
                    top: 570.0,
                    left: 72.0,
                    child: Text(
                      "Billing Address",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Positioned(
                    top: 595.0,
                    left: 70.0,
                    child: Opacity(
                      opacity: .5,
                      child: Container(
                        height: 45.0,
                        width: 275.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white70
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 610.0,
                    left: 85.0,
                    child: Text(
                      "No. 05, Main Road, Jaela.",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Positioned(
                    top: 715,
                    left: 35,
                    child: Container(
                      height: 50,
                      width: 100,
                      child: RaisedButton(
                        child: Text('My Complaints',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: complains,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 715,
                    left: 155,
                    child: Container(
                      height: 50,
                      width: 100,
                      child: RaisedButton(
                        child: Text('Bill Payments',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: billPay,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 715,
                    left: 275,
                    child: Container(
                      height: 50,
                      width: 100,
                      child: RaisedButton(
                        child: Text('My Usage',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: myUsage,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 790,
                    left: 142,
                    child: Container(
                      height: 35,
                      width: 125,
                      child: RaisedButton(
                        child: Text('Back',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: back,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60.0,
                    left: 35.0,
                    child: Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                        fontFamily: "Satisfy",
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )

      )
     );
  }


  void complains () {
    Navigator.of(context).pushNamed("/complain");
  }

  void billPay() {
    Navigator.of(context).pushNamed("/payment");
  }

  void myUsage () {
    Navigator.of(context).pushNamed("/assess");
  }

  void back () {
    Navigator.of(context).pushNamed("/home");
  }
}