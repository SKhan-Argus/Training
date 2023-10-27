import 'package:demo1/pages/home_page.dart';
import 'package:demo1/pages/profile_page.dart';
import 'package:demo1/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
   FirstPage({super.key});


  int selectedIndex = 0;

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        centerTitle: true,
      ),

      body: _pages[1],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',

        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: 'Settings',
        ),

      ]),

      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[100],
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         child: Icon(
      //           Icons.favorite,
      //           size: 48,
      //         ),
      //       ),
      //
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("H O M E"),
      //         onTap: (){
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/homepage');
      //         },
      //       ),
      //
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('S E T T I N G S'),
      //         onTap: (){
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/settingspage');
      //         },
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
