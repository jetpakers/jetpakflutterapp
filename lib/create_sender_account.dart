import 'package:flutter/material.dart';
import 'package:jetpaksender/main.dart';
import 'package:validators/validators.dart' as validator;

class ThirdScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ThirdScreenState();
  }
}

class ThirdScreenState extends State<ThirdScreen> {
  String phoneNumber;
  String country;
  String region;
  String municipality;
  String address;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildPhoneNumber() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        maxLength: 20,
        keyboardType: TextInputType.number,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Phone Number is Required';
          }

          return null;
        },
        onSaved: (String value) {
          phoneNumber = value;
        },
      ),
    );
  }

  Widget _buildCountry() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Country',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Country is Required';
          }

          return null;
        },
        onSaved: (String value) {
          country = value;
        },
      ),
    );
  }

  Widget _buildRegion() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Region',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
//      keyboardType: TextInputType.visiblePassword,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Region is Required';
          }
          return null;
        },
        onSaved: (String value) {
          region = value;
        },
      ),
    );
  }

  Widget _buildMunicipality() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Municipality',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Municipality is Required';
          }

          return null;
        },
        onSaved: (String value) {
          municipality = value;
        },
      ),
    );
  }

  Widget _buildAddress() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Address',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Address is Required';
          }

          return null;
        },
        onSaved: (String value) {
          address = value;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 2)
          ]),
          //width: MediaQuery.of(context).size.width,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFF4E37B2),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.navigate_before,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "Create Jetpak Account",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Icon(
                    Icons.navigate_before,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              _buildPhoneNumber(),
              _buildCountry(),
              _buildRegion(),
              _buildMunicipality(),
              _buildAddress(),
              SizedBox(height: 100),
              ButtonTheme(
                minWidth: 250.0,
                height: 50.0,
                child: RaisedButton(
                  color: Color(0xFFEA7313),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.grey)),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
       ),
        ),
      ),
    );
  }
}
