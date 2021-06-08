import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constr.dart';
import 'package:get/get.dart';
import 'BottomButton.dart';
import 'TopMenus.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

var pageController2 = PageController().obs;

class _Page1State extends State<Page1> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  RxBool show = true.obs;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
            itemCount: 5,
            key: PageStorageKey(Random),
            controller: pageController2.value,
            onPageChanged: (a) {
              show.value = true;
              // pageController.animateToPage(a,
              // duration: Duration(milliseconds: 800), curve: Curves.linear);
            },
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () => showMenu(),
                  child: Container(
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.network(images[index],height: Get.height*.75,),
                                  TopMenus(show: show)
                                ],
                              ),
                              Text(
                                  "sfdfsfsdfgsdfhttps://s.france24.com/media/display/d1676b6c-0770-11e9-8595-005056a964fe/w:1400/p:16x9/news_1920x1080.webcdsvcsacs"),
                            ],
                          ),
                        ),
                        Container(
                          height: 55,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                            ),
                            color: Colors.black.withOpacity(.8),
                          ),
                          child: Center(
                            child: Text(
                              'data kclskdmck xmdasic',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            }),
        bottomSheet: BottomButtom(show: show),
      ),
    );
  }

  showMenu() {
    if (show.value == true) {
      show.value = false;
    } else {
      show.value = true;
    }
  }
}
