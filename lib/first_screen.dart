import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstScreenState();
  }
}

class FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('assets/images/logo.png')),
          Center(
            child: Image(image: AssetImage('assets/images/jetPakhome.png')),
          ),
          RaisedButton(
            color: Color(0xFFEA7313),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(12.0),
                side: BorderSide(color: Colors.blueGrey)),
            onPressed: () {},
            child: Text(
              'Fly Jetpak',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0),
                    side: BorderSide(color: Color(0xFF4E37B2))),
                onPressed: () {},
                child: Text(
                  'Send Jetpak',
                  style: TextStyle(color: Color(0xFF4E37B2)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
