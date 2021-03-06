import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FifthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FifthScreenState();
  }
}

class FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(flex: 1),
          Center(
            child: Container(
                child: Text(
                  'Request Received!!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )),
          ),
          Spacer(flex: 1),
          Container(
            width: 300.0,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
//                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/acc_created.png')
              ),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Color(0xFF4E37B2),
            ),
          ),
          Spacer(),
          Container(
              child: Text(
                "Your Send Request has been Received!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              )),
          Spacer(),
          Container(
              child: Text(
                "Please proceed to shipping items to the Jetpak warehouse address.", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              )),
          Spacer(),
          Container(
            width: 300.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Color(0xFF8574CE),
            ),
            child: Text(
              "\n (209)-543-6857 \n 4520 Sun Down PL \n Salida, California(CA), \n 95368",
              style: TextStyle(fontSize: 22, color: Colors.white),
              textAlign: TextAlign.center,
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
