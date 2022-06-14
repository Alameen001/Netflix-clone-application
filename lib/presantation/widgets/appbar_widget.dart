import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        title,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
      ),
      const Spacer(),
      const Icon(
        Icons.cast,
        color: Colors.white,
      ),
      kwidth,
      // Container(
      //   width: 30,
      //   height: 30,
      //   color: Colors.amber,
      // ),
      // kwidth,
    ]);
  }
}
