import 'package:flutter/material.dart';
import 'package:instagram_clone/src/widgets/insta_activities.dart';

class Instahome extends StatefulWidget {
  _InstahomeState createState() => _InstahomeState();
}

class _InstahomeState extends State<Instahome> {

  int currentIndex = 0;

  List<Widget> _widgetOptions = <Widget> [
    InstaActivities()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions[0],
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Widget bottomNavBar() {
    final List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        title: Text(''),
        icon: Icon(
          Icons.home
        )
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: Icon(
          Icons.search
        )
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: Icon(
          Icons.add
        )
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: Icon(
          Icons.favorite_border
        )
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: Icon(
          Icons.person
        )
      )
    ];
    return BottomNavigationBar(
      items: items,
      onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      currentIndex: currentIndex,
      iconSize: 30.0,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.pink,
      type: BottomNavigationBarType.fixed,
    );
  }
}