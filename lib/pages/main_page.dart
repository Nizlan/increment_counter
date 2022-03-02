import 'package:flutter/material.dart';
import 'package:increment_counter/pages/first_page.dart';
import 'package:increment_counter/pages/second_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int page = 0;
  Widget buildBody(int page) {
    switch (page) {
      case 0:
        return const FirstPage();
      case 1:
        return const SecondPage();
      default:
        return const FirstPage();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(page),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Счётчик',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.change_circle),
            label: 'Изменить',
          ),
        ],
        currentIndex: page,
        onTap: _onItemTapped,
      ),
    );
  }
}
