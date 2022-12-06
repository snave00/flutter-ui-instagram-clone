import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home_page.dart';
import 'package:instagram_clone/screens/profile_page.dart';

class BasePage extends StatefulWidget {
  BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;

  final List<Widget> bottomPage = [
    const HomePage(),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Video'),
    ),
    const Center(
      child: Text('Likes'),
    ),
    const ProfilePage(),
  ];

  void _selectIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Image.asset('assets/images/instagram_logo.png'),
          leadingWidth: 130,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/plus.png',
                width: 25,
                height: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/messenger.png',
                width: 25,
                height: 25,
              ),
            )
          ]),
      body: bottomPage[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _selectIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/home.png',
              width: 25,
              height: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/search.png',
              width: 25,
              height: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/video.png',
              width: 25,
              height: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/heart.png',
              width: 25,
              height: 25,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/my_avatar.jpg'),
              radius: 15,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
