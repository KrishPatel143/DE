import 'package:de/home_page.dart';
import 'package:de/login_page.dart';
import 'package:de/login_page_two.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Real Estate-Login',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        LoginPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Medical-Login',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        LoginPageTwo(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade200,
      screens: _pages,
      initPositionSelected: 0,
    );
  }
}
