// import 'package:firebase_core/firebase_core.dart';
// import 'package:de/home_page.dart';
// import 'package:de/login_page_two.dart';
import 'package:de/hidden_deawer.dart';
import 'package:de/home_page.dart';
import 'package:de/utils/routes.dart';
import 'package:flutter/material.dart'; 
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
        "/": (context) => HiddenDrawer(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => HiddenDrawer(),
      },
    );
  }
}
