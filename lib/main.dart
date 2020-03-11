import 'package:flutter/material.dart';
import 'package:jetpaksender/send_request_form.dart';

void main() => runApp(JetpakApp());

class JetpakApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jetpak App",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: FormScreen(),
    );
  }
}
