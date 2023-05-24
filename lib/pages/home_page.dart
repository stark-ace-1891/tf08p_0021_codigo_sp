import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tf08p_0021_codigo_sp/pages/my_drawer_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomPage extends StatefulWidget {
  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  
  bool isDarkMode = false;
  int gender = 1;

  saveSharedPreferences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString("fullName", _fullNameController.text);
    _prefs.setString("address", _addressController.text);
    _prefs.setBool("darkMode", isDarkMode);
    _prefs.setInt("gender", gender);
    print("Guardando en shared preferences");
  }

  getDataSharedPreferences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String fullName = _prefs.getString("fullName") ?? "-";
    String address = _prefs.getString("address") ?? "-";
    isDarkMode = _prefs.getBool("darkMode") ?? false;
    gender = _prefs.getInt("gender") ?? 1;
    print(fullName);
    print(address);
    print(isDarkMode);
    print(gender);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawerWidget(),
      appBar: AppBar(
        title: Text("Shareds Preferences App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Configuracion General",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(
                hintText: "Nombre completo",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                hintText: "Direccion actual",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            // Switch(
            //   value: false,
            //   onChanged: (bool value) {},
            // ),
            SwitchListTile(
              value: isDarkMode,
              title: Text("Modo oscuro"),
              onChanged: (bool value) {
                isDarkMode = value;
                print(isDarkMode);
                setState(() {});
              },
            ),
            // Radio(
            //   value: 1,
            //   groupValue: 1,
            //   onChanged: (int? value) {},
            // ),
            RadioListTile(
              value: 1,
              title: Text("Masculino"),
              groupValue: gender,
              onChanged: (int? value) {
                gender = value!;
                print(gender);
                setState(() {});
              },
            ),
            RadioListTile(
              value: 2,
              title: Text("Femenino"),
              groupValue: gender,
              onChanged: (int? value) {
                gender = value!;
                print(gender);
                setState(() {});
              },
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  // print(_fullNameController.text);
                  // print(_addressController.text);
                  saveSharedPreferences();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: Icon(
                  Icons.save,
                  color: Colors.white,
                ),
                label: Text(
                  "Guardar Data",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
