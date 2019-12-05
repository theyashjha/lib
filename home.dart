import 'dart:async';
import 'webpage.dart';
import 'package:aioapp/webpage.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'lists.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  WebViewController controller;

  // FlutterWebviewPlugin loadUrl = FlutterWebviewPlugin();

  // final webView = FlutterWebviewPlugin();

  // @override
  // void initState() {
  //   super.initState();
  //   webView.close();
  // }

  @override
  Widget build(BuildContext context) {
    var gridView = GridView.builder(
        itemCount: 53,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Card(
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: Image.asset('lib/images/${images[index]}'),
                      // child: SizedBox(child: Text('yashjha'),),
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(
                      //     image: AssetImage('lib/images/${images[index]}'),
                      //     fit: BoxFit.fitWidth,
                      //     alignment: Alignment.topCenter,
                      //   ),
                      // ),
                    ),
                  ),
                  Text(nameOfSite[index]),
                ],
              ),
            ),
            onTap: () {
              controller.loadUrl(yashjha[index]);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => WebPage()),
              // );
            },
          );
        });
    // Navigator.of(context).pushNamed('/webview');

    return Scaffold(
      appBar: AppBar(
        title: Text('Just Another App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: gridView,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AIO App',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Text(
                        'The All In One App!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/illustration.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.blue.withOpacity(.6), BlendMode.dstATop),
                ),
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
