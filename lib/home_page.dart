// import 'package:flutter/material.dart';
// import 'signing/validation_sign_in.dart';

// class LoginScreen extends StatefulWidget {
//   static String tag = 'login-screan';

//   @override
//   State<StatefulWidget> createState() {
//     return LoginScreenState();
//   }
// }

// class LoginScreenState extends State<LoginScreen> with ValidationMixin {
//   final formKey = GlobalKey<FormState>();

//   String email = '';
//   String pass = '';

//   Widget build(context) {
//     return 
//        Form(
//         key: formKey,
//         child: ListView(
//           shrinkWrap: true,
//           padding: EdgeInsets.only(left: 24.0, right: 24.0),
//           children: <Widget>[
//             SizedBox(height: 30.0),
//             emailField(),
//             SizedBox(height: 5.0),
//             passwordField(),
//             SizedBox(height: 5.0),
//             submitButton(),
//             SizedBox(height: 5.0),
//             forgotLabel(),
//           ],
//         ),
      
//     );
//   }

//   Widget emailField() {
//     return Padding(
//       padding: EdgeInsets.all(10.0),
//       child: TextFormField(
//         keyboardType: TextInputType.emailAddress,
//         decoration: InputDecoration(
//             labelText: 'Email Address',
//             hintText: 'you@examble.com',
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
//         validator: validateEmai,
//         onSaved: (String value) {
//           email = value;
//         },
//       ),
//     );
//   }

//   Widget passwordField() {
//     return Padding(
//         padding: EdgeInsets.all(10.0),
//         child: TextFormField(
//           obscureText: true,
//           decoration: InputDecoration(
//               labelText: 'Password',
//               hintText: '********',
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0))),
//           validator: validatePass,
//           onSaved: (String value) {
//             pass = value;
//           },
//         ));
//   }

//   Widget submitButton() {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 16.0),
//       child: RaisedButton(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           onPressed: () {
//             if (formKey.currentState.validate()) {
//               formKey.currentState.save();

//               print('Email: $email');
//               print('Password: $pass');
//             }
//           },
//           padding: EdgeInsets.all(15),
//           color: Colors.orange,
//           child: Text('Sign In', style: TextStyle(color: Colors.white))),
//     );
//   }

//   Widget forgotLabel() {
//     return FlatButton(
//       child: Row(
//         children: <Widget>[
//           Text(
//             'Forgot my refrence number?',
//             style: TextStyle(color: Colors.black54),
//           ),
//           Text(" Click here", style: TextStyle(color: Colors.black))
//         ],
//       ),
//       onPressed: () {
//         // Navigator.of(context).push(
//         //     MaterialPageRoute(builder: (BuildContext context) => ChangePass()));
//       },
//     );
//   }
// }
