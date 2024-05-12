import 'package:flutter/material.dart';
import 'package:metal_tracker/static.dart';

class OtherScreen extends StatefulWidget {
  OtherScreen(this.title, this.pageIndex, {super.key});
  static const routeName = '/others';

  String title;
  int pageIndex;

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    CommonMediaQuery.initialize(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text(widget.title)),
    );
  }
}
