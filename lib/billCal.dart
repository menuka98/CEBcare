import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
//import 'dart:html';

class BillCal extends StatefulWidget {
  @override
  _BillCal createState() => _BillCal();
}

class _BillCal extends State<BillCal> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);

    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
        });
    }

    final TextEditingController unitFilter = new TextEditingController();
    String tariffDropdownValue = 'Select';
    String selfDropdownValue = 'Select';
    int _radioValue1 =0;


    return MaterialApp(
      title: 'Bill Calculator',
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
          title: Text('Bill Calculator', style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 25, 0, 0),
                          child: Center(
                            child: Container(
                              width: 130,
                              height: 50,
//                      padding: EdgeInsets.fromLTRB(30, 30, 20, 20),
                              child: Text(
                                  'Tariff', style: TextStyle(fontSize:15,fontWeight: FontWeight.normal)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffF0A1A1),
                                border: Border.all(
                                  color: Color(0xffF0A1A1),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child:Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: DropdownButton<String>(
                          style: TextStyle(color: Color(0xffF0A1A1),),
                                hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                                  child: Text('Select Item'),
                          ),
                          value: tariffDropdownValue,
                          onChanged: (String newValue) {
                              setState(() {
                                tariffDropdownValue = newValue;
                              });
                          },

                          items: <String>['Select','Domestic (11)','Domestic (13) TOU', 'Industrial (21,22)-1', 'General (31,32)-1', 'Government (33,34)-1'].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                          }).toList(),
                        ),
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Center(
                          child: Container(
                          width: 130,
                          height: 50,
//                      padding: EdgeInsets.fromLTRB(30, 30, 20, 20),
                            child: Text(
                              'Self generation', style: TextStyle(fontSize:15,fontWeight: FontWeight.normal)
                          ),
                     ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 20, 20),
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffF0A1A1),
                              border: Border.all(
                                color: Color(0xffF0A1A1),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: DropdownButton<String>(
                              style: TextStyle(color: Color(0xffF0A1A1),),
                              hint: Text('Select Item'),
                              value: selfDropdownValue,
                              onChanged: (String newValue) {
                                setState(() {
                                  selfDropdownValue = newValue;
                                });
                              },
                              items: <String>['Select','Non','Net Metering', 'Net Accounting', 'Net Plus'].map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: Container(
                          width: 50,
                          height: 30,
//                      padding: EdgeInsets.fromLTRB(30, 30, 20, 20),
                          child: Text(
                              'Units', style: TextStyle(fontSize:15,fontWeight: FontWeight.normal)
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                        child: Container(
                          width: 200,
                          height: 40,
                          child: TextField(
                            decoration: new InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF0A1A1),),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF0A1A1)),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7, 10, 20, 0),
                          child: Column(
                            children: <Widget>[
                              Radio(
                                value: 0,
                                groupValue: _radioValue1,
                              ),
                              Text('No. of Days')
                            ],
                          )

                          )

                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.fromLTRB(25, 10, 20, 0),
                              child: Column(
                                children: <Widget>[
                                  Radio(
                                    value: 0,
                                    groupValue: _radioValue1,
                                  ),

                                  Text('Pick Dates')
                                ],
                              )

                          )

                        ],
                      ),

                    ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 40,
                          child: TextField(
                            decoration: new InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF0A1A1),),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF0A1A1)),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(

                              border: Border.all(
                                color: Color(0xffF0A1A1),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: RaisedButton(
                            onPressed: () => _selectDate(context),
                            child: Text('Select date',textAlign: TextAlign.start),
                            textColor:Colors.black12,
                            color: Colors.white,

                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              //side: BorderSide(color: Colors.orange[800])
                            ),
                            padding: EdgeInsets.symmetric(vertical:10.0,horizontal: 40),
                          ),
                        ),
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
                        padding: EdgeInsets.fromLTRB(195, 0, 10, 10),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(

                                    border: Border.all(
                                      color: Color(0xffF0A1A1),
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: RaisedButton(
                                  onPressed: () => _selectDate(context),
                                  child: Text('Select date'),
                                  textColor:Colors.black12,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(10.0),
                                    //side: BorderSide(color: Colors.orange[800])
                                  ),
                                  padding: EdgeInsets.symmetric(vertical:10.0,horizontal: 40),
                                ),
                              ),
                            ),
                          ],
                        )
                      )

                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 140,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffF0A1A1),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Total', style: TextStyle(fontSize:30,fontWeight: FontWeight.normal))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Rs. 0.00', style: TextStyle(fontSize:30,fontWeight: FontWeight.normal))
                            ],
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffF0A1A1),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(2))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        width: 130,
                                        height: 59,

                                        child: Text(
                                            '  Fixed Charge', style: TextStyle(fontSize:20,fontWeight: FontWeight.normal)
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text('Rs. 0.00', style: TextStyle(fontSize:15,fontWeight: FontWeight.normal))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffF0A1A1),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(0))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        width: 130,
                                        height: 59,

                                        child: Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Text(
                                              ' Usage Charge', style: TextStyle(fontSize:20,fontWeight: FontWeight.normal)
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text('Rs. 0.00', style: TextStyle(fontSize:15,fontWeight: FontWeight.normal))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffF0A1A1),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(2))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        width: 130,
                                        height: 59,

                                        child: Text(
                                            'Charge per day', style: TextStyle(fontSize:20,fontWeight: FontWeight.normal)
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text('Rs. 0.00', style: TextStyle(fontSize:15,fontWeight: FontWeight.normal))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Column(
                      children: <Widget>[
                       Container(
                        decoration: BoxDecoration(
                        color: Color(0xff9C3030),
                         border: Border.all(
                           color: Color(0xff9C3030),
                     ),
                      borderRadius: BorderRadius.all(Radius.circular(15))
              ),
                         child: FlatButton(
                           onPressed: () {
                           },
                           child:Text("CALCULATE",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                             textColor:Colors.white,
                             shape: RoundedRectangleBorder(
                             borderRadius: new BorderRadius.circular(15),
                              //side: BorderSide(color: Colors.orange[800])
                         ),
                             padding: EdgeInsets.symmetric(vertical:5.0,horizontal: 80),
                      ),
           ),

                      ],
                    ),
                  )
                ],
              ),
                ],
              ),
        )
        ),
      );

  }

}

