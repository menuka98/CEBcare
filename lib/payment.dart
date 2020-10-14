import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var scrWidth = MediaQuery.of(context).size.width;
    // var scrHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 40),
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
//                            SvgPicture.asset("assets/menu.svg"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "PAYMENTS",
                              style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.black,
                              fontFamily: "Satisfy",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 130.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/myAvatar.png'),
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 00, 0),
                          child: Text(
                            "Menuka Prasadith",
                            style: TextStyle(
                              fontFamily: 'Cardo',
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            "ASP 00223",
                            style: TextStyle(
                              fontFamily: 'Cardo',
                              fontSize: 15,
                              color: Color(0xffADADAD),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(120, 10, 20, 0),
                          child: Row(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "Due Date",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontFamily: "Satisfy",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(00, 10, 50, 0),
                          child: Row(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "17/10/2020",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontFamily: "Satisfy",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                        padding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      height: 54,
                      width: 315,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffEEE7E7),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(
                                0,
                                4,
                              ),
                              blurRadius: 8,
                            )
                          ]),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("   Amount To be Paid"),
                              Text("2500.67  "),
                            ]),

                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: SizedBox(height: 20),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 00),
                        height: 150,
                        width: 310,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFFEDED),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(
                                  0,
                                  4,
                                ),
                                blurRadius: 8,
                              )
                            ]),
                        child: Container(
                         constraints: BoxConstraints.expand(),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/pay.png"),
                                  fit: BoxFit.scaleDown,alignment: Alignment.centerRight)),
                          child: Column(

                            children: <Widget>[
                              Row(

                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Row(
                                      children: <Widget>[
                                        Center(
                                          child: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                                                child: Text(
                                                  "Payment Type",
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: Colors.black,
                                                    fontFamily: "Satisfy",
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Radio(
                                              value: 0,
                                            ),
                                            Text('Debit Card'),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Radio(
                                              value: 0,
                                            ),
                                            Text('Credit Card'),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                            child: RaisedButton(
                              onPressed: () {
                              },
                              color: Color(0xff9C3030),
                              child:Text("PROCEED",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                              textColor:Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                //side: BorderSide(color: Colors.orange[800])
                              ),
                              padding: EdgeInsets.symmetric(vertical:10,horizontal: 80),
                            ),
                          ),
                        ],
                      )

                    ],
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OuterClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 4);
    //
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.85,
        size.height * 0.05, size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class InnerClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(size.width * 0.7, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.1);
    //
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.11, size.width * 0.7, 0);

    //
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}