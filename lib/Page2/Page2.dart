import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constr.dart';
import 'Widgets.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          pageHeding(title: "Daily News"),
          NewsList(),
          pageHeding(title: "Catogorise"),
          Container(
            height: Get.height * .6,
            child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.only(right: 10, left: 10),
                crossAxisSpacing: 6.0,
                mainAxisSpacing: 10.0,
                children: List.generate(category.length - 1, (index) {
                  return Center(
                    child: Container(
                      // height: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(
                          image: NetworkImage(category[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            titles[index],
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
