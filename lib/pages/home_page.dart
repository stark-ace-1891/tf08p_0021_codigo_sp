import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tf08p_0021_codigo_sp/pages/my_drawer_widget.dart';

class HomPage extends StatefulWidget {
  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  bool isDarkMode = false;
  int gender = 1;

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
              decoration: InputDecoration(
                hintText: "Nombre completo",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
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
                onPressed: () {},
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
