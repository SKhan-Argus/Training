import 'package:flutter/material.dart';
import 'package:voteinsta/pages/home_page.dart';
import 'package:voteinsta/pages/login_page.dart';
import 'package:voteinsta/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '',
      routes: {
        '': (context) => HomePage(),
        'login' : (context) => LoginPage(),
        'register' : (context) =>RegisterPage(),
      },
      home:HomePage(),
    );
  }

}