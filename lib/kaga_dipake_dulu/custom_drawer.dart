import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFD0574E),
                gradient: LinearGradient(
                  colors: [Color(0xFFD0574E), Color(0xFFE57373)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Text(
                'Navigasi',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          ListTile(
            leading: Icon(Icons.one_k),
            title: Text('Tugas 1'),
          ),
          ListTile(
            leading: Icon(Icons.two_k),
            title: Text('Tugas 2'),
          )
        ],
      ),
    );
  }
}
