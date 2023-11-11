import 'package:flutter/material.dart';
import 'package:grocerygo/screens/user/homepage.dart';
import 'package:grocerygo/screens/user/notificationpage.dart';
import 'package:grocerygo/screens/user/orderspage.dart';
import 'package:grocerygo/screens/user/profile.dart';

class BottomNavigationBarUser extends StatefulWidget {
  const BottomNavigationBarUser({super.key});

  @override
  State<BottomNavigationBarUser> createState() => _BottomNavigationBarUserState();
}

class _BottomNavigationBarUserState extends State<BottomNavigationBarUser> {
  int selectedindex=0;

  final List<Widget> _list=[
    HomePage(),
    NotificationPage(),
    OrdersPage(),
    ProfilePage()
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
          selectedItemColor: Colors.deepOrange,
        onTap: onItemTapped,

      ),
    );
  }
}
