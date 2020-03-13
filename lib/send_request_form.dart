import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String productType;
  String productName;
  String productDescription;
  String estimatedWeight;
  String packageSource;
  String retailer;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildProductType() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Product Type',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Product type is Required';
          }

          return null;
        },
        onSaved: (String value) {
          productType = value;
        },
      ),
    );
  }

  Widget _buildProductName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Product Name',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Product Name is Required';
          }
          return null;
        },
        onSaved: (String value) {
          productName = value;
        },
      ),
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Product Description',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
//      keyboardType: TextInputType.visiblePassword,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Product Description is Required';
          }

          return null;
        },
        onSaved: (String value) {
          productDescription = value;
        },
      ),
    );
  }

  Widget _buildEstimatedWeight() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Estimated Weight',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        keyboardType: TextInputType.number,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Estimated Weight is Required';
          } else {
            int calories = int.tryParse(value);
            if (calories == null || calories <= 0) {
              return 'Calories must be greater than 0';
            }
          }

          return null;
        },
        onSaved: (String value) {
          estimatedWeight = value;
        },
      ),
    );
  }

  Widget _buildPackageSource() {
    return Container(
//      padding: const EdgeInsets.all(8.0),
        child: Column(
      children: <Widget>[
        Text(
          "Choose Package Source",
          textAlign: TextAlign.left,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 80.0,
                height: 75.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
//                  fit: BoxFit.cover,
                      image: AssetImage('assets/images/shopping.png')),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Color(0xFFEA7313),
                ),
              ),
              //Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 80.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
//                  fit: BoxFit.cover,
                        image: AssetImage('assets/images/home-run.png')),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }

  Widget _buildRetailer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Retailer',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Retailer is Required';
          }

          return null;
        },
        onSaved: (String value) {
          retailer = value;
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
                    "New Send Request",
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
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                _buildProductType(),
                _buildProductName(),
                _buildDescription(),
                _buildEstimatedWeight(),
                _buildPackageSource(),
                _buildRetailer(),
                SizedBox(height: 50),
                ButtonTheme(
                  minWidth: 250.0,
                  height: 50.0,
                  child: RaisedButton(
                    color: Color(0xFFEA7313),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.grey)),
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();
                      print(productType);
                      print(productName);
                      print(productDescription);
                      print(estimatedWeight);
                      print(packageSource);
                      print(retailer);

                      //Send to API
                    },
                  ),
                )
              ],
              scrollDirection: Axis.vertical,
            ),
          ),
        ),
      )),
    );
  }
}
