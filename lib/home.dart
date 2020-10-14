import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {

  List<String> images = [
    "assets/images/calender.png",
        "assets/images/complaints.png",
        "assets/images/payment.png",
        "assets/images/billCal.png" ];

  Widget customcard(String image,String navigate) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, navigate);
        },
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 180.0,
                      width: 200.0,
                      child: Material(
                        color: Colors.white,
                        child: Image(
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: Icon(Icons.menu, color: Colors.black,),
        actions: <Widget>[
          InkWell(
            onTap: picturePressed,
            child: Container(width: 55,decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/images/myAvatar.png'))) ,padding: EdgeInsets.all(20.0),),
          ),
//            Container(padding: const EdgeInsets.all(8.0), child: Image.asset('assets/images/myAvatar.png',fit: BoxFit.contain,height: 32,),),
        ],
        title: Text('Hey Menuka!!', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
              body: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/homebg.png"),
                        fit: BoxFit.fill)),
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),

                  child: GridView.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      customcard(images[0],'/calender'),
                      customcard(images[1],'/complain'),
                      customcard(images[2],'/payment'),
                      customcard(images[3],'/billCalc'),
                    ],
                  ),
                ),

    )
    );



  }

  void picturePressed () {
    Navigator.pushNamed(context, "/profile");
  }
}