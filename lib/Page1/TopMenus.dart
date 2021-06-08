
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopMenus extends StatelessWidget {
  const TopMenus({
    Key? key,
    required this.show,
  }) : super(key: key);

  final RxBool show;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Obx(
        () => AnimatedContainer(
          height: show.value ? 0 : 50,
          duration: Duration(milliseconds: 300),
          child: Center(
            child: Text(
              'Artical',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
