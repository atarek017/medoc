import 'package:flutter/material.dart';
import 'drawer.dart';
import 'dart:async';

class AboutRoute extends StatefulWidget {
  static String tag = 'about-page';

  @override
  _AboutRouteState createState() => _AboutRouteState();
}

class _AboutRouteState extends State<AboutRoute> {
  @override
  Widget build(BuildContext context) {
    double appWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return Future.value(true);
      },
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/pics/about_background.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          drawer: contentDrawer(context, "about"),
          body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blueGrey,
            expandedHeight: 480,
            pinned: false,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: appBarContent(appWidth),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft:  Radius.circular(8)),
                child: Container(
                    color: Color.fromARGB(255, 255, 216, 61),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left: 16)),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 20,
                              child: Image.asset(
                                'assets/pics/logow.png',
                                width: 28,
                                height: 28,
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 16)),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Text(
                            'MESSAGE FROM THE PRESIDENT',
                            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 25),
                          height: 1,
                          color: Colors.black45,
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 50),
                          child: Text(
                            bigMessage,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 25)),
                        Container(
                          padding: EdgeInsets.only(left: 16),
                          child: personPart(),
                        ),
                        Padding(padding: EdgeInsets.only(top: 25)),
                        listTailContent(appWidth),
                      ],
                    ),
                  ),
              ),
            ]),
          ),
        ],
      ),
        ),
      ),
    );
  }



  Widget listTailContent(double appWidth) {
    return Container(
      color: Colors.black,
      width: appWidth,
      height: 180,
      padding: EdgeInsets.all(8),
      child: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/pics/move.png',
                height: 180,
                fit: BoxFit.fitWidth,
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                child: Container(
                  height: 180,
                  color: Color.fromARGB(50, 255, 255, 255),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20, right: 120, top: 20),
                  child: Text(
                    'ADS Section',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/pics/logo.png',
                      width: 52,
                      height: 52,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget personPart() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/pics/personb.png',
          width: 50,
          height: 50,
        ),
        Padding(padding: EdgeInsets.only(left: 20)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Prof. Abdulrahman Alshaikh',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'President',
              style: TextStyle(fontSize: 14, color: Colors.black45),
            ),
          ],
        ),
      ],
    );
  }

  String bigMessage = """Dear Colleagues,
It is with great pleasure that we invite you to attend The Middle East Diabetes & Obesity Congress (MEDOC19) which will take place 8-11 March 2019 in Jeddah, KSA.

Diabetes & Obesity have developed over the last decades to become essential components of diagnosis and care for patients with diabetes mellitus. New technologies are soon to be married with existing management applications in one congress in Ritz Carlton, Jeddah.""";


  Widget appBarContent(double appWidth) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/pics/about_background.png',
          height: 520,
          width: appWidth,
          fit: BoxFit.cover,
        ),
        // Image.asset(
        //   'assets/pics/filter.png',
        //   height: 520.0,
        //   width: double.infinity,
        //   fit: BoxFit.cover,
        // ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, right: 100),
              child: Text(
                'Middle East Diabetes & Obesity Congress ',
                style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              padding: EdgeInsets.only(left: 16, right: 120),
              child: Text(
                'Takes place 8-11 March 2019 in Jeddah, KSA.',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),

      ],
    );
  }
  


}
