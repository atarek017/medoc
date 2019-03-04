import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

String url = "http://www.registration.medoc2019.co/validation";

class ValidateMypayment extends StatefulWidget {
  @override
  ValidateMypaymentState createState() => ValidateMypaymentState();
}

class ValidateMypaymentState extends State<ValidateMypayment> {
  final webView = FlutterWebviewPlugin();
  @override
  void initState() {
    super.initState();
    webView.close();

  
  }

  @override
  void dispose() {
    webView.dispose();
  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebviewScaffold(
        url: url,
        appBar: new AppBar(
          backgroundColor: Colors.orange,
          title: new Text("Validation"),
          centerTitle: true,
          
        ),
        withJavascript: true,
        allowFileURLs: true,
      ),
    );
  }
}
