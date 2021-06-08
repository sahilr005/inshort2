import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page1/Page1.dart';

import 'package:flutter_application_1/page3.dart';

import 'Page2/Page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Page2(),
          Page1(),
          Page3(),
        ],
      ),
    );
  }
}
