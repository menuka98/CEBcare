import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class complain extends StatefulWidget {
  @override
  _complainState createState() => _complainState();
}

class _complainState extends State<complain> {

  @override
  void initState(){
    super.initState();
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Complain',
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            bottomOpacity: 0.0,
            elevation: 0.0,
            leading: Icon(Icons.menu, color: Colors.black,),
            actions: <Widget>[
              Container(width: 55,decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/images/myAvatar.png'))) ,padding: EdgeInsets.all(10.0),),
//            Container(padding: const EdgeInsets.all(8.0), child: Image.asset('assets/images/myAvatar.png',fit: BoxFit.contain,height: 32,),),
            ],
            title: Text('COMPLAINTS', style: TextStyle(color: Colors.black),),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            // Center(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: <Widget>[
            //       Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Column(
            //           children: <Widget>[
            //             Center(
            //               child: Text(
            //                 "Complaints",
            //                 style: TextStyle(
            //                   fontSize: 40.0,
            //                   color: Colors.black,
            //                   fontFamily: "Satisfy",
            //                 ),
            //                 textAlign: TextAlign.center,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
           Padding(
             padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffF0A1A1),
                        border: Border.all(
                          color: Color(0xffF0A1A1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          color: Colors.pinkAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                child: Icon(Icons.add,color:Colors.black),
                              ),
                              Container(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Text("Add New",style: TextStyle(color:Colors.black,fontSize:15,fontWeight: FontWeight.bold),),
                                  ),
                              )
                            ],
                          ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(5.0),
//                     //side: BorderSide(color: Colors.orange[800])
//                   ),
                          padding: EdgeInsets.symmetric(vertical:10.0,horizontal: 10.0),
                        ),
                      ],
                    ),
                  ),
              Container(
                width: 150,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                      color: Colors.white70,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                 children: <Widget>[

                   FlatButton(
                     color: Colors.white70,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Padding(
                           padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                           child: Icon(Icons.attach_file, color:Colors.black),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                           child: Text("3 Complaints",style: TextStyle(color:Colors.black,fontSize:15,fontWeight: FontWeight.bold),),

                         )
                       ],
                     ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(5.0),
//                     //side: BorderSide(color: Colors.orange[800])
//                   ),
                     padding: EdgeInsets.symmetric(vertical:10.0,horizontal: 10.0),
                   ),
                ],
          ),
              )
        ],
      ),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Complaint Type",
                          style: TextStyle(
                            fontSize: 25.0,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        width: 270,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xffe6e6e6),
                              border: Border.all(
                                color: Colors.white70,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child:DropdownButton<String>(
                            style: TextStyle(color: Colors.deepPurple),
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Search'),
                            ),
                            icon: Padding(
                              padding: EdgeInsets.fromLTRB(75, 0, 0, 0),
                              child: Icon(Icons.arrow_drop_down,),
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                              });
                            },

                            items: <String>['Domestic (11)','Domestic (13) TOU', 'Industrial (21,22)-1', 'General (31,32)-1', 'Government (33,34)-1'].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Location",
                            style: TextStyle(
                              fontSize: 25.0,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: <Widget>[
                                Radio(
                                  value: 0,
                                ),
                                Text('Electricity Account')
                          ],
                        )
                    )
                  ],
                ),
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
                          Text('Show on Map'),
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
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      "Contact Information",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontFamily: "Satisfy",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            width: 180,
                            height: 100,
                            child: TextField(
                              decoration: new InputDecoration(
                                  hintText: "Land Number"
                              ),
                            ),
                            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Container(
                            width: 180,
                            height: 100,
                            child: TextField(
                              decoration: new InputDecoration(
                                  hintText: "Mobile"
                              ),
                            ),
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Center(
                        child: Container(
                          width: 135,
                          height: 90,
                            color: Color(0xffF0A1A1),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Attach File",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                                  ),
//                                  RaisedButton(
//                                    color: Colors.white,
//                                    child:Text("Attach File",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
//                                    textColor:Color(0xff47B5BE),
//                                    shape: RoundedRectangleBorder(
//                                      borderRadius: new BorderRadius.circular(5.0),
//                                      //side: BorderSide(color: Colors.orange[800])
//                                    ),
//                                    padding: EdgeInsets.symmetric(vertical:10.0,horizontal: 10),
//                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.attach_file, size: 40)
                                ],
                              )
                            ],
                          )
                        ),

                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: new Container(
                    decoration: BoxDecoration(
                        color: Color(0xff9C3030),
                        border: Border.all(
                            color: Color(0xff9C3030)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),

                    child: new FlatButton(
                      onPressed: () {
                      },
                      child:Text("LODGE COMPLAINT",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                      textColor:Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                        //side: BorderSide(color: Colors.orange[800])
                      ),
                      padding: EdgeInsets.symmetric(vertical:10.0,horizontal: 70),

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

      ),
    ));

  }

}

