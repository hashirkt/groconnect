import 'package:flutter/material.dart';
import 'package:grocerygo/screens/admin/adminhomepage.dart';

class BottomNavBarAdmin extends StatefulWidget {
  const BottomNavBarAdmin({super.key});

  @override
  State<BottomNavBarAdmin> createState() => _BottomNavBarAdminState();
}

class _BottomNavBarAdminState extends State<BottomNavBarAdmin> {
  int selectedindex=0;

  final List<Widget> _list=[
    AdminDashboard(),
    Text("data1"),
    Text("data2"),
    Text("data3"),

  ];

  void onItemTapped(int index){
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _list.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
              label: "Notifications"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.article_outlined),
              label: "Orders"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "Profile"
          ),

        ],
        currentIndex: selectedindex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blueGrey.shade800,
        onTap: onItemTapped,

      ),
    );
  }
}
