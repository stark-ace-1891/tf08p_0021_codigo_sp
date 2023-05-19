import 'package:flutter/material.dart';
import 'package:tf08p_0021_codigo_sp/pages/home_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shared Preferences App",
      debugShowCheckedModeBanner: false,
      home: HomPage(),
    );
  }
}