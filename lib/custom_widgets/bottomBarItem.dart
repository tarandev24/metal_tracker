import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  BottomBarItem(
      {required this.icon,
      required this.iconColor,
      required this.label,
      required this.routeName,
    
      super.key}
      
      );

  IconData icon;
  Color iconColor;
  String label;
  String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
      child: Column(
        children: [
          SizedBox(
            width: 30,
            height: 30,
            child: Icon(icon, color: iconColor),
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 11, fontWeight: FontWeight.bold, color: iconColor),
          ),
        ],
      ),
    );
  }
}
