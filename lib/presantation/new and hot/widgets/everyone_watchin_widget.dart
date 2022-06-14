import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/home/custom_button_widget.dart';
import 'package:netflix_clone/presantation/widgets/video_widget.dart';

class everyonesWatching extends StatelessWidget {
  const everyonesWatching({
    Key? key,
    required this.image2URL,
    required this.movieTitle,
    required this.movieDescription,
  }) : super(key: key);

  final String image2URL;
  final String movieTitle;
  final String movieDescription;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khight,
         Text(
          movieTitle,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        khight,
         Text(
          movieDescription,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        const SizedBox(
          height: 50,
        ),
        vidieovidgets(imageurl: image2URL),

      
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            custombuttonwidget(
              icon: Icons.share,
              title: 'Share  ',
              iconSize: 24,
              textSize: 16,
            ),
            kwidth,
            custombuttonwidget(
              icon: Icons.add,
              title: 'Add Button',
              iconSize: 24,
              textSize: 16,
            ),
            kwidth,
            custombuttonwidget(
              icon: Icons.play_arrow,
              title: 'Paly',
              iconSize: 24,
              textSize: 16,
            ),
            kwidth,
          ],
        ),
      ],
    );
  }
}
