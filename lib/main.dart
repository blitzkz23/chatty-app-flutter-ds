import 'package:chatty_app/pages/message_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/message_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      routes: {
        '/': (context) => HomePage(),
        '/message-page': (context) => MessagePage(),
      },
    );
  }
}
