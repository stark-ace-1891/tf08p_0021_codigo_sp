import 'package:flutter/material.dart';
import 'package:tf08p_0021_codigo_sp/utils/shared_global.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {

  final SharedGlobal _sharedGlobal = SharedGlobal();

  String fullName = "";
  String address = "";
  bool isDarkMode = false;
  int gender = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mi informacion",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "Aqui va tu nombre",
              ),
              subtitle: Text(
                _sharedGlobal.fullName,
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(
                "Aqui va tu direccion",
              ),
              subtitle: Text(
                _sharedGlobal.address,
              ),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text(
                _sharedGlobal.darkMode ? "Activo" : "Inactivo",
              ),
              subtitle: Text(
                "Modo Oscuro",
              ),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text(
                _sharedGlobal.gender == 1 ? "Masculino" : "Femenino",
              ),
              subtitle: Text(
                "Genero",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
