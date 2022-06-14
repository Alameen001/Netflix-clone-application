 import 'package:flutter/material.dart';

class Searchtexttitle extends StatelessWidget {
  final String title;
  const Searchtexttitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
