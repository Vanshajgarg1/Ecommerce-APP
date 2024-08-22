import 'package:flutter/material.dart';
import 'package:flutter_basic/Component/bottom_nav_bar.dart';
import 'package:flutter_basic/pages/CartPage.dart';
import 'package:flutter_basic/pages/ShopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    // to display shop page
    const ShopPage(),
    // to display cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0
        ,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding:  EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'assets/images/adi_logo-removebg-preview.png',
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(color: Colors.grey[800]),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(Icons.info),
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
            const Padding(
              padding:  EdgeInsets.only(left: 25 , bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}
