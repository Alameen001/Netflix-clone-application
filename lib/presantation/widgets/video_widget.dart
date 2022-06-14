import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';
import 'package:netflix_clone/presantation/serach/widgets/search_ideal.dart';
import 'package:netflix_clone/presantation/serach/widgets/search_resul.dart';

class vidieovidgets extends StatelessWidget {
  const vidieovidgets({
    Key? key,required this.imageurl,
  }) : super(key: key);
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.network(
           '${TMDB.imageId}$imageurl',
            fit: BoxFit.cover,
            
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
