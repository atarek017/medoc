import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medoc19/about.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';



Future<String> fetchUser(String email, String pass, context) async {
  String url =
      "http://registration.medoc2019.co/login_api?email=$email&reference_id=$pass";
  http.Response respond = await http
      .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

  if (respond.statusCode == 200) {
    final pref = await SharedPreferences.getInstance();

    pref.setString("loged", "true");

    pref.setString("email", "$email");
    pref.setString("pass", "$pass");
    
    print(pref.getString("loged"));
    
    Navigator.of(context).pushReplacementNamed(AboutRoute.tag);
  } else {
    var mesag = json.decode(respond.body);
    print(mesag['msg']);
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(mesag['msg']),
      duration: Duration(seconds: 4),
      backgroundColor: Colors.orange,
    ));
  }
}
