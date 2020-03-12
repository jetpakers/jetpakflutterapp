import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jetpaksender/create_app_account.dart';

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
          Spacer(flex: 1),
          Image(image: AssetImage('assets/images/logo.png')),
          Spacer(),
          Center(
            child: Image(image: AssetImage('assets/images/jetPakhome.png')),
          ),
          Spacer(),
          ButtonTheme(
            minWidth: 250.0,
            height: 50.0,
            child: RaisedButton(
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
          ),
       Spacer(),
          Column(
            children: <Widget>[
              ButtonTheme(
                minWidth: 250.0,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                      side: BorderSide(color: Color(0xFF4E37B2))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondScreen())
                    );
                        },
                  child: Text(
                    'Send Jetpak',
                    style: TextStyle(color: Color(0xFF4E37B2)),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
