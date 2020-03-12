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
            color: Colors.deepOrange,
            onPressed: () {  },
            child: Text ('Fly Jetpak',style: TextStyle (color: Colors.white),),
    ),
          Column(
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
                onPressed: () {  },
                child: Text ('Send Jetpak',style: TextStyle (color: Colors.deepOrange),),
              ),
            ],
    ),
        ],
      ),
    );
  }
}
