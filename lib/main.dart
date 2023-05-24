import 'package:flutter/material.dart';
import 'package:tf08p_0021_codigo_sp/pages/home_page.dart';
import 'package:tf08p_0021_codigo_sp/utils/shared_global.dart';

void main() {
  //La sigueinte linea lo que hace es interactuar con el motor principal de flutter, para que interactue con codigo nativo
  WidgetsFlutterBinding.ensureInitialized();
  SharedGlobal preferences = SharedGlobal();
  preferences.initSharedPreferences();
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