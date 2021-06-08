import 'package:flutter/material.dart';

import '../constr.dart';

Padding pageHeding({required String title}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      title,
      style: TextStyle(fontSize: 24),
    ),
  );
}

Container NewsList() {
  return Container(
      height: 200,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(images[index]),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ],
              )));
}
