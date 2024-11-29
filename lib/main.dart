import 'package:flutter/material.dart';
import 'package:flutter_ui/SignUp.dart';
import 'package:flutter_ui/pages/counter.dart';
import 'package:flutter_ui/pages/home.dart';
import 'package:flutter_ui/pages/login/login.dart';
import 'package:flutter_ui/pages/todo/todoContainer.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      // home: const Counter(),
      // home: const Todocontainer(),
      home: Login(),
      debugShowCheckedModeBanner: false,
      // home: MyStateFulWidget(),
      // routes: {
      //   "/": (context) => HomePageContainer(),
      //   // "/": (context) => SignIn(),
      //   "/signup": (context) => SignUp(),
      // },
    );
  }
}
