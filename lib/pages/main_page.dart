import 'package:flutter/material.dart';
import 'package:postest5_2009106072_gilang/pages/forecast_page.dart';
import '../pages/cuaca_page.dart';
import '../pages/setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _navigationIndex = 0;
  final List<Widget> _pages = [
    CuacaPage(),
    ForecastPage(),
    const SettingPage(),
  ];

  void switchCuacaPage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_navigationIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          _navigationIndex = index;
        }),
        currentIndex: _navigationIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cloud_outlined,
            ),
            activeIcon: Icon(
              Icons.cloud,
            ),
            label: "Cuaca",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart_outlined),
            label: "Ramalan Cuaca",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: "Pengaturan",
          )
        ],
      ),
    );
  }
}