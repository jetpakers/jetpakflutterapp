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
  String sourceAddress;

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
        maxLength: 10,
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

//        if (!RegExp(
//            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
//            .hasMatch(value)) {
//          return 'Please enter a valid email Address';
//        }

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Package Source',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
//      keyboardType: TextInputType.phone,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Package Source is Required';
          }

          return null;
        },
        onSaved: (String value) {
          packageSource = value;
        },
      ),
    );
  }

  Widget _buildSourceAddress() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Source Address',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Source Address is Required';
          }

          return null;
        },
        onSaved: (String value) {
          sourceAddress = value;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Demo")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildProductType(),
              _buildProductName(),
              _buildDescription(),
              _buildEstimatedWeight(),
              _buildPackageSource(),
              _buildSourceAddress(),
              SizedBox(height: 100),
              RaisedButton(
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
                  print(sourceAddress);

                  //Send to API
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
