import 'package:flutter/material.dart';
import 'package:metal_tracker/custom_widgets/bottomBarItem.dart';
import 'package:metal_tracker/static.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({this.currentNavIndex = 0, Key? key}) : super(key: key);

  int currentNavIndex;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: scaffoldBackgroundColor,
      height: 70,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.only(top: 0),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomBarItem(
                icon: Icons.home,
                iconColor: currentNavIndex == 0 ? primaryColor : Colors.grey,
                label: 'Home',
                routeName: ''),
            BottomBarItem(
                icon: Icons.auto_graph,
                iconColor: currentNavIndex == 1 ? primaryColor : Colors.grey,
                label: 'Portfolio',
                routeName: ''),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child:  Padding(
                padding: const EdgeInsets.all(0.0),
                child: ClipOval(child: Image.asset('assets/app_logo.png', fit: BoxFit.cover,))
              ),
            ),
            BottomBarItem(
                icon: Icons.price_change,
                iconColor: currentNavIndex == 3 ? primaryColor : Colors.grey,
                label: 'Prices',
                routeName: ''),
            BottomBarItem(
                icon: Icons.settings,
                iconColor: currentNavIndex == 4 ? primaryColor : Colors.grey,
                label: 'Settings',
                routeName: '')
          ],
        ),
      ),
    );
  }
}
