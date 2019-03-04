import 'package:flutter/material.dart';

class CustomAlert {
  showCustomAlert(BuildContext context, String description) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            child: Container(
                width: 350.0,
                height: 250.0,
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                        ),
                        Center(
                          child: Text(
                            description,
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: (Navigator.of(context).pop),
                          heroTag: 'btndialog',
                          child: Icon(Icons.close),
                          elevation: 0,
                          backgroundColor: Colors.greenAccent,
                        ),
                      ],
                    ),
                  ],
                )),
          );
        });
  }
}
