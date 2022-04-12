import 'package:app_entregador_mercado/screens/SplashScreen.dart';
import 'package:app_entregador_mercado/screens/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF5fa7b3)),
          primaryColor: Color(0xFF5fa7b3)),
      routes: {
        "/": (BuildContext context) => HomeSplashScreen(),
        "/Login": (BuildContext context) => Login(),
        // "/Home": (BuildContext context) => Home_Tabs(),
        // "/Novo_Projeto": (BuildContext context) => New_Project(),
      },
    );
  }
}
