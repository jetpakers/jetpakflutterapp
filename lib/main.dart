import 'package:flutter/material.dart';
import 'package:jetpaksender/send_request_form.dart';
import 'package:jetpaksender/first_screen.dart';
import 'package:jetpaksender/create_app_account.dart';
import 'package:jetpaksender/create_sender_account.dart';
import 'package:jetpaksender/acc_created_address.dart';

void main() => runApp(JetpakApp());

class JetpakApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jetpak App",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: FourthScreen(),
    );
  }
}