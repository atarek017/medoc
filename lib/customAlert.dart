import 'package:flutter/material.dart';

class CustomAlert {
  showCustomAlert(BuildContext context, Image image, String name,
      String country, String description) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          var wedith = MediaQuery.of(context).size.width;
          var hight = MediaQuery.of(context).size.height;
          return Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            child: Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                width: wedith * .8,
                height: hight * .6,
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      height: hight * .41,
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          Text(
                            name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            country,
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            description,
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    
                    Positioned(
                      child: image,
                      top: -50,
                      right: 0,
                      left: 0,
                    ),
                    Positioned(
                      bottom: 5,
                      left: 0,
                      right: 0,
                      child: FloatingActionButton(
                        onPressed: (Navigator.of(context).pop),
                        heroTag: 'btndialog',
                        child: Icon(Icons.close),
                        elevation: 0,
                        backgroundColor: Colors.redAccent,
                      ),
                    )
                  ],
                )),
          );
        });
  }
}
