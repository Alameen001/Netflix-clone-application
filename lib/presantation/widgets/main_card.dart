import 'package:flutter/material.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';

class maincard extends StatelessWidget {
  const maincard({
    Key? key,required this.imageurl,
  }) : super(key: key);
final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
       height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("${TMDB.imageId}$imageurl")
        )
      ),
    );
  }
}