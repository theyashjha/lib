import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // WebViewState launchSite = WebViewState.startLoad;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Another App',
      home: Home(),
      theme: ThemeData(primaryColor: Colors.teal),
      // routes: {
      //   '/webview': (_) => WebviewScaffold(
      //     url: 'https://www.google.com/',
      //   ),
      // },
    );
  }
}

