import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FourthScreenState();
  }
}

class FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(flex: 1),
          Container(
              child: Text(
            'Account created successfully !',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )),
          Spacer(flex: 1),
          Container(
            color: Color(0xFF4E37B2),
            child: Center(
              child: Image(image: AssetImage('assets/images/acc_created.png')),
            ),
          ),
          Spacer(),
          Container(
              child: Text(
            "Here's the Jetpak warehouse address",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
          Spacer(),
          Container(
              child: Text(
            "This is where you will send your goods.\nWe will Jetpak it to your destination.",
            style: TextStyle(fontSize: 18),
          )),
          Spacer(),
          Container(
            color: Color(0xFF8574CE),
            child: Text(
                "(209)-543-6857 \n 4520 Sun Down PL \n Salida, California(CA), \n 95368",
                style: TextStyle(fontSize: 22),
            ),
          ),
          Spacer(),
          ButtonTheme(
            minWidth: 250.0,
            height: 50.0,
            child: RaisedButton(
              color: Color(0xFFEA7313),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.blueGrey)),
              onPressed: () {},
              child: Text(
                'Finish',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
