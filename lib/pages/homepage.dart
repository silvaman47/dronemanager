import 'package:dronemanager/pages/jobsheet.dart';
import 'package:dronemanager/pages/profile.dart';
import 'package:dronemanager/pages/status.dart';
import 'package:dronemanager/pages/work_order_form.dart';
import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const JobSheet(),
    const WorkOrderForm(),
    const Status(),
    const Profile()
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomNavigationBar(
          //  selectedItemColor: Colors.amber,
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.shifting,
          backgroundColor: const Color.fromARGB(255, 83, 151, 207),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.format_list_numbered_outlined),
                label: 'Job Sheet',
                backgroundColor: Color.fromARGB(255, 235, 0, 0)),
            BottomNavigationBarItem(
                icon: Icon(Icons.format_align_right_sharp),
                label: 'Work Order ',
                backgroundColor: Color.fromARGB(255, 131, 98, 98)),
            BottomNavigationBarItem(
                icon: Icon(Icons.shelves),
                label: 'Status',
                backgroundColor: Color.fromARGB(255, 82, 74, 74)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Color.fromARGB(255, 122, 0, 0)),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
