import 'package:flutter/material.dart';
import 'package:instgram_clone_ui/screens/user_account.dart';
import 'package:instgram_clone_ui/screens/user_home.dart';
import 'package:instgram_clone_ui/screens/user_reels.dart';
import 'package:instgram_clone_ui/screens/user_search.dart';
import 'package:instgram_clone_ui/screens/user_shop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  void navigateBottomNav(int index)
  {
    setState(() {
      currentIndex = index;
    });
  }
  List<Widget> children = [
    UserHome(),
    UserReels(),
    UserSearch(),
    UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purpleAccent,
        onTap: navigateBottomNav,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
              icon: Icon(
                Icons.home,
          )),
          BottomNavigationBarItem(
              label: 'Reels',
              icon: Icon(
                Icons.video_call,
              )),
          BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(
                Icons.search,
              )),
          BottomNavigationBarItem(
              label: 'Shop',
              icon: Icon(
                Icons.shop,
              )),
          BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(
                Icons.person,
              )),
        ],
      ),
      body:children[currentIndex],

    );
  }
}
