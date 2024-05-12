import 'package:flutter/material.dart';
import 'package:metal_tracker/screens/dashboard.dart';
import 'package:metal_tracker/static.dart';

void main() {
  runApp(const MetalTracker());
}

class MetalTracker extends StatelessWidget {
  const MetalTracker({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Metal Tracker',
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        secondaryHeaderColor: secondaryHeaderColor,
        fontFamily: 'Poppins',
        primaryColor: primaryColor,
        splashColor: Colors.grey,
        canvasColor: subPrimaryColor,
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(Colors.grey[500]),
        ),
        iconTheme: const IconThemeData(color: primaryColor),
      ),
      routes: {
        DashboardScreen.routeName : (context) => const DashboardScreen()
      },
      initialRoute: DashboardScreen.routeName,
      
    );
  }
}


