import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomButtom extends StatelessWidget {
  const BottomButtom({
    Key? key,
    required this.show,
  }) : super(key: key);

  final RxBool show;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        height: show.value ? 0 : 55,
        duration: Duration(milliseconds: 300),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(CupertinoIcons.heart),
            Icon(Icons.bookmark_outline),
            Icon(Icons.share_outlined),
          ],
        ),
      ),
    );
  }
}
