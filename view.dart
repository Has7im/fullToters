// ignore_for_file: camel_case_types

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:fulltoters/UI_Screens/MainApp_Screen/Search_Screen/view.dart';
import 'package:fulltoters/UI_Screens/MainApp_Screen/view.dart';
import 'package:fulltoters/UI_Screens/Order_Nav_Screen/view.dart';
import 'package:fulltoters/UI_Screens/Order_Screen/view.dart';
import 'package:fulltoters/UI_Screens/setting_Screen/view.dart';
class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int _currentIndex = 0;
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.person,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Setting_Screen()));
                }
            ),
            title: Text('حساب'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.list_alt,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Order_TapList()));
                }
            ),
            title: Text('طلبات'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.card_travel,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Order_Screen()));
                }
            ),
            title: Text('المندوب',),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.search,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Search_Screen()));
                }
            ),
            title: Text('بحث'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.home,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Main_Screen()));
                }
            ),
            title: Text('رئيسية'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
