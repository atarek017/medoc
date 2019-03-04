import 'package:flutter/material.dart';
import 'signing/sign_in.dart';
import 'signing/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'about.dart';
import 'dart:async';


Future main() async {
  final pref = await SharedPreferences.getInstance();
  if(pref.getString("loged")=="true"){
    runApp(App());
  }
  else{
    runApp(MyApp());
  }
  
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutRoute(),
    );
  }

}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    AboutRoute.tag: (context) => AboutRoute(),
    LoginScreen.tag: (context) => LoginScreen(),
    // ChangePass.tag:(context)=>ChangePass(),
    SignUp.tag: (context) => SignUp()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      home: Scaffold(
        body: HomePage(),
      ),
      routes: routes,
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Image.asset(
        "assets/login_background.png",
        fit: BoxFit.fitWidth,
      ),
      DefaultTabController(
        length: 2,
        initialIndex: 0,

        child: Column(
          children: <Widget>[
            TabBar(
              indicatorColor: Colors.orange,

              tabs: <Widget>[
                Tab(
                  child: Text("Sign In", style: TextStyle(color: Colors.black)),
                ),
                Tab(
                  child: Text("Sign Up", style: TextStyle(color: Colors.black)),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height *.70,
              child: TabBarView(
                children: <Widget>[LoginScreen(), SignUp()],
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
