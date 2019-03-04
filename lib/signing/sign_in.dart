import 'package:flutter/material.dart';
import 'package:medoc19/signing/fetch_user.dart';
import 'validation_sign_in.dart';
import 'changepassword.dart';
import 'ensure-visible.dart';

class LoginScreen extends StatefulWidget {
  static String tag = 'login-screan';

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  FocusNode emailFocusNode = new FocusNode();
  FocusNode paasswordFocusNode = new FocusNode();

  String email = '';
  String pass = '';

  Widget build(context) {
    return Form(
      key: formKey,
      child: ListView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * .05),
          emailField(),
          SizedBox(height: 5.0),
          passwordField(),
          SizedBox(height: 5.0),
          submitButton(),
          SizedBox(height: 5.0),
          forgotLabel(),
          
        ],
      ),
    );
  }

  Widget emailField() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: EnsureVisibleWhenFocused(
        focusNode: emailFocusNode,
        child: TextFormField(
          focusNode: emailFocusNode,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: 'E-mail Address',
              hintText: 'you@examble.com',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          validator: validateEmai,
          onSaved: (String value) {
            email = value;
          },
        ),
      ),
    );
  }

  Widget passwordField() {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: EnsureVisibleWhenFocused(
          focusNode: paasswordFocusNode,
          child: TextFormField(
            focusNode: paasswordFocusNode,
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Reference Number',
                hintText: '********',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            onSaved: (String value) {
              pass = value;
            },
          ),
        ));
  }

  Widget submitButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            if (formKey.currentState.validate()) {
              formKey.currentState.save();

              print('Email: $email');
              print('Password: $pass');
              fetchUser(email, pass, context);
            }
          },
          padding: EdgeInsets.all(15),
          color: Colors.orange,
          child: Text('Sign In', style: TextStyle(color: Colors.white))),
    );
  }

  Widget forgotLabel() {
    return FlatButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Forgot my refrence number?',
            style: TextStyle(color: Colors.black54, fontSize: 14),
          ),
          Text(" Click here",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold))
        ],
      ),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => ChangePass()));
      },
    );
  }
}
