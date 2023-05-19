import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomPage extends StatelessWidget {
  const HomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Text("Hola"),
      appBar: AppBar(
        title: Text("Shareds Preferences App"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
