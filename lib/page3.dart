import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page1/Page1.dart';
import 'package:flutter_application_1/constr.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    print(pageController2.value.initialPage);
    return SafeArea(
      child: Container(
        child: WebView(
          initialUrl: newsList[pageController2.value.page!.toInt()],
        ),
      ),
    );
  }
}
