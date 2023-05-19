import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/13813545/pexels-photo-13813545.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white12,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/8062069/pexels-photo-8062069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                    ),
                    Text(
                      "Fiorella Gonzales Tapia",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Administrador",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("Mi perfil"),
              leading: Icon(
                Icons.people,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            ListTile(
              title: Text("Portafolio General"),
              leading: Icon(
                Icons.file_copy,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            ListTile(
              title: Text("Cambiar contraseña"),
              leading: Icon(
                Icons.lock,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Divider(
              indent: 12,
              endIndent: 12,
            ),
            ListTile(
              title: Text("Salir del App"),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
