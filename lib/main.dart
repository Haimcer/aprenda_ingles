import 'package:escola_de_ingles/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xff795548)),
          primaryColor: Color(0xff795548),
          //accentColor: Colors.green
          scaffoldBackgroundColor: Color(0xfff5e9b9)),
    ));
