import 'package:ceb_care/signup.dart';
import 'package:flutter/material.dart';
import 'Resultpage.dart';
import 'home.dart';
import 'payment.dart';

//import 'complaint.dart';
import 'calender.dart';
import 'complain-k.dart';
import 'billCal.dart';

//import 'ccccc.dart';
import 'profile.dart';
import 'LoginScreen.dart';
import 'assessByCensus-k.dart';
import 'splash.dart';
import 'startpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: splashscreen(),
      routes: <String, WidgetBuilder>{
        '/assess': (context) => Assess(),
        '/home': (context) => HomeScreen(),
        '/calender': (context) => Calender(),
        '/billCalc': (context) => BillCal(),
        '/complain': (context) => complain(),
        '/payment': (context) => Payment(),
        '/result': (context) => Resultpage(),
        '/profile': (context) => Profile(),
        '/login': (context) => LoginScreen(),
        '/startpage': (context) => StartScreen()
        // '/signup': (context) => SignUpPage()

      },
    );
  }
}
