import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Assess extends StatefulWidget {
  final Widget child;

  Assess({Key key, this.child}) : super(key: key);

  _Assess createState() => _Assess();
}

class _Assess extends State<Assess> {
  List<charts.Series<Paper, String>> _seriesPieData;


  _generateData() {
    var pieData = [
      new Paper('CFL/LED', 100, Color(0xff990099)),
      new Paper('Television', 50, Color(0xff990099)),
      new Paper('Ceiling Fan', 45, Color(0xfffdbeff)),
      new Paper('Pedestal Fan', 50, Color(0xfffdbf19)),
    ];

    _seriesPieData.add(
      charts.Series(
        data: pieData,
        domainFn: (Paper paper, _) => paper.papername,
        measureFn: (Paper paper, _) => paper.marks,
        colorFn: (Paper paper, _) =>
            charts.ColorUtil.fromDartColor(paper.colorval),
        id: 'Daily Task',
        labelAccessorFn: (Paper row, _) => '${row.marks}',
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesPieData = List<charts.Series<Paper, String>>();
    _generateData();
  }


  @override
  Widget build(BuildContext context) {
//    _getData();
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Text('ASSESS BY CENSUS', style: TextStyle(color: Colors.black),),
          leading: Icon(Icons.menu, color: Colors.black,),
          actions: <Widget>[
            Container(width: 55,decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/images/myAvatar.png'))) ,padding: EdgeInsets.all(10.0),),
//            Container(padding: const EdgeInsets.all(8.0), child: Image.asset('assets/images/myAvatar.png',fit: BoxFit.contain,height: 32,),),
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
          body: Column(
              children: [
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 328,
                                      height: 225,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(
                                                0,
                                                4,
                                              ),
                                              blurRadius: 8,
                                            )
                                          ]),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: charts.PieChart(
                                            _seriesPieData,
                                            animate: true,
                                            animationDuration: Duration(seconds: 2),
                                            behaviors: [
                                              new charts.DatumLegend(
                                                outsideJustification: charts.OutsideJustification.endDrawArea,
                                                horizontalFirst: false,
                                                desiredMaxRows: 2,
                                                cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                                entryTextStyle: charts.TextStyleSpec(
                                                    color: charts.MaterialPalette.purple.shadeDefault,
                                                    fontFamily: 'Georgia',
                                                    fontSize: 11),
                                              )
                                            ],
                                            defaultRenderer: new charts.ArcRendererConfig(
                                                arcWidth: 30,
                                                arcRendererDecorators: [
                                                  new charts.ArcLabelDecorator(

                                                      labelPosition: charts.ArcLabelPosition.inside)
                                                ])),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(15, 30, 0, 0),
                                        child: Container(
                                          width: 370,
                                          height: 200,
                                          child: Table(
                                            border: TableBorder.all(width: 1, color: Colors.red, style: BorderStyle.solid),
                                            children: [
                                              TableRow(
                                                  children: [
                                                      Text('Appliance'),Text('Qty'),Text('h/day'),Text('P/W'),Text('kWh/day')
                                                    ]),
                                              TableRow(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                                      child: Text('CFL/LED', style: TextStyle(fontSize: 10)),
                                                    ),
                                                    Text('Id'),
                                                    Text('Id'),
                                                    Text('Id'),
                                                    Text('Id')
                                                  ]),
                                              TableRow(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                                      child: Text('Television', style: TextStyle(fontSize: 10)),
                                                    ),
                                                    Text('Id'),
                                                    Text('Id'),
                                                    Text('Id'),
                                                    Text('Id')
                                                  ]),
                                              TableRow(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                                      child: Text('Ceiling Fan', style: TextStyle(fontSize: 10)),
                                                    ),
                                                    Text('Id'),
                                                    Text('Id'),
                                                    Text('Id'),
                                                    Text('Id')
                                                  ]),
                                              TableRow(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                                      child: Text('Pedestal Fan', style: TextStyle(fontSize: 10)),
                                                    ),
                                                    Text('Id'),
                                                    Text('Id'),
                                                    Text('Id'),
                                                    Text('Id')
                                                  ]),
                                                  ]
                                              )
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Wrap(
//                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  spacing: 15,
                                    children: <Widget>[
                                      Container(
                                          width: 160,
                                          height: 157,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF0A1A1),
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
                                                    Text('Units Per', style: TextStyle(fontSize:18,fontWeight: FontWeight.normal))
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: <Widget>[
                                                    Text('Day', style: TextStyle(fontSize:18,fontWeight: FontWeight.normal))
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: <Widget>[
                                                    Text('35', style: TextStyle(fontSize:20,fontWeight: FontWeight.normal ))
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                      ),
                                      Container(
                                          width: 156,
                                          height: 157,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF0A1A1),
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
                                                    Text('Units Per', style: TextStyle(fontSize:18,fontWeight: FontWeight.normal))
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: <Widget>[
                                                    Text('period', style: TextStyle(fontSize:18,fontWeight: FontWeight.normal))
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: <Widget>[
                                                    Text('of 30 Days', style: TextStyle(fontSize:18,fontWeight: FontWeight.normal))
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: <Widget>[
                                                    Text('120', style: TextStyle(fontSize:20,fontWeight: FontWeight.normal ))
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ],
                )
          ],
      ),

    ),
    );
  }
}

class Paper {
  String papername;
  double marks;
  Color colorval;

  Paper(this.papername,this.marks,this.colorval);
}