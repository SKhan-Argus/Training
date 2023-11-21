import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/home_page.dart';
import 'package:provider_tutorial/list_provider.dart';
import 'package:provider_tutorial/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context)=>NumbersListProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context)=>HomePage(),
          '/second':(context)=>SecondPage(),
        },
      ),
    );
  }
}

