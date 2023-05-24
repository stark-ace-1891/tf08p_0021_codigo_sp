import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  String fullName = "";
  String address = "";
  bool isDarkMode = false;
  int gender = 1;

  @override
  initState() {
    super.initState();
    getDataShared();
  }

  getDataShared() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    fullName = _prefs.getString("fullName") ?? "-";
    address = _prefs.getString("address") ?? "-";
    isDarkMode = _prefs.getBool("darkMode") ?? false;
    gender = _prefs.getInt("gender") ?? 1;
    
    setState(() {
      
    });
  }

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
                fullName,
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(
                "Aqui va tu direccion",
              ),
              subtitle: Text(
                address,
              ),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text(
                isDarkMode ? "Activo" : "Inactivo",
              ),
              subtitle: Text(
                "Modo Oscuro",
              ),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text(
                gender == 1 ? "Masculino" : "Femenino",
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
