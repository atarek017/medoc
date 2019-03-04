import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'custom_message.dart';

class ChangePass extends StatefulWidget {
  static String tag = 'changepass-page';

  @override
  State<StatefulWidget> createState() {
    return ChangePassState();
  }
}

class ChangePassState extends State<ChangePass> {
  final formKey = GlobalKey<FormState>();
  String emailText = '';

  Widget build(BuildContext context) {
    final email = Padding(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        onChanged: (String value) {
          emailText = value;
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: 'E-mail',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
      ),
    );

    final submitButton = Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onPressed: () async {
            CustomAlert alert= new CustomAlert();
          String url =
              "http://registration.medoc2019.co/forget_password_api?email=$emailText";
          http.Response respond = await http.get(Uri.encodeFull(url),
              headers: {"Accept": "application/json"});

          var mesag = json.decode(respond.body);
          print(mesag['msg']);
          if (respond.statusCode == 200) {
             alert.showCustomAlert(
                context,
                mesag['msg'],
              );
           
          }else{
            alert.showCustomAlert(
                context,
                mesag['msg'],
              );
          }
        },
        padding: EdgeInsets.all(20),
        color: Colors.orange,
        child: Text('Submit', style: TextStyle(color: Colors.white)),
      ),
    );

    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * .17,
              ),
              Center(
                child: Text("Enter Your Email to",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    )),
              ),
              Center(
                child: Text(
                  "receive reference number",
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              email,
              Center(
                child: Text(
                  "*Reference number will be sent to your email address",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .10,
              ),
              submitButton
            ],
          ),
        ),
      ),
    );
  }
}
