import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomeHomePage();
  }
}

class MyCustomeHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.grey,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0,0,20.0,10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home_max_outlined, size: 40 , color: Color(0xff123456)),
                    Icon(Icons.access_time_sharp, size: 40 , color: Color(0xff123456)),
                    Icon(Icons.account_balance_wallet_outlined, size: 40 , color: Color(0xff123456)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:60),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60))),
              ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
            child: Column(
              children: [
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40 , left: 20),
                      child: Icon(Icons.menu_outlined , size: 40, color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50 , right: 20) ,
                      child: Icon(Icons.more_horiz , size: 40, color: Colors.white,),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Welcome",style: TextStyle(
                      color: Colors.white, fontSize: 20,
                    ),),
                  ) ),
                // Image.asset('images/image1.jpg',
                //     fit: BoxFit.cover),
              ],
            ),
          ),
          Positioned(
            top: 180 , left: 16,
             // Image.asset('images/image1.jpg',
             // fit: BoxFit.cover),
          //  child: Icon(Icons.menu_outlined , size: 40, color: Colors.white,),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset('assets/images/mixed-berries.jpg',scale: 2.8,),
            )
           ),
        ],
      ),
    );
  }
}
