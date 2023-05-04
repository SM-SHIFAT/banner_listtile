import 'package:banner_listtile/banner_listtile.dart';
import 'package:flutter/material.dart';

import 'custom_screen.dart';
import 'listview_screen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home:  ContainerTestView(),
    );
  }
}

class ContainerTestView extends StatefulWidget {
   const ContainerTestView({Key? key}) : super(key: key);



  @override
  State<ContainerTestView> createState() => _ContainerTestViewState();
}

class _ContainerTestViewState extends State<ContainerTestView> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    ListviewScreen(),
    CustomScreen(),

  ];

   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Banner Listtile"),
        ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize),
            label: 'Custom',
          ),

        ],
      ),
    );
  }
}
