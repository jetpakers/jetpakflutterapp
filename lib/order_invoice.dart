import 'dart:ffi';

import 'package:flutter/material.dart';

class InvoiceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InvoiceScreenState();
  }
}

class InvoiceScreenState extends State<InvoiceScreen> {
  String shipmentNumber;
  String productType;
  String productName;
  String productDescription;
  String chargeableWeight;
  Double fees;
  Double insuranceFee;
  Double amount;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildShipmentNumber() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Shipment Number',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Shipment Number is Required';
          }

          return null;
        },
        onSaved: (String value) {
          shipmentNumber = value;
        },
      ),
    );
  }

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

  Widget _buildChargeableWeight() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Chargeable Weight',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        keyboardType: TextInputType.number,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Chargeable Weight is Required';
          }
          return null;
        },
        onSaved: (String value) {
          chargeableWeight = value;
        },
      ),
    );
  }

  Widget _buildFees() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Handling Fees and Taxes ',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        keyboardType: TextInputType.number,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Handling Fees and Taxes  is Required';
          }

          return null;
        },
        onSaved: (String value) {
          fees = value as Double;
        },
      ),
    );
  }

  Widget _buildInsuranceFees() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Insurance Fees',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        keyboardType: TextInputType.number,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Insurance Fees is Required';
          }
          return null;
        },
        onSaved: (String value) {
          insuranceFee = value as Double;
        },
      ),
    );
  }

  Widget _buildAmount() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Amount',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black))),
        keyboardType: TextInputType.number,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Amount is Required';
          }
          return null;
        },
        onSaved: (String value) {
          amount = value as Double;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                    "Order Invoice",
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
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              _buildShipmentNumber(),
              _buildProductType(),
              _buildProductName(),
              _buildDescription(),
              _buildChargeableWeight(),
              _buildFees(),
              _buildInsuranceFees(),
              _buildAmount(),
              ButtonTheme(
                minWidth: 250.0,
                height: 50.0,
                child: RaisedButton(
                  color: Color(0xFFEA7313),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.grey)),
                  child: Text(
                    'Make payment',
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
                    print(chargeableWeight);
                    print(fees);
                    print(insuranceFee);
                    print(amount);

                    //Send to API
                  },
                ),
              ),
            ],
            scrollDirection: Axis.vertical,
          ),
        ),
      ),
    );
  }
}
