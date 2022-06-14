import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/home/custom_button_widget.dart';
import 'package:netflix_clone/presantation/widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    Key? key,
    required this.index,
    required this.headings,required this.movieDescription,required this.image,
  }) : super(key: key);
  final int index;
  final String headings;
    final String movieDescription;
    final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                '11',
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 480,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              khight,
              vidieovidgets(imageurl: image,),
                khight,
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Expanded(
                     child: Text(
                      headings,
                      style: TextStyle(
                         overflow: TextOverflow.ellipsis,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                                     ),
                   ),
                     khight,
                  
                  const Spacer(),
                 
                  Flexible(
                     
                    child: Row(
                      children: const [
                        custombuttonwidget(
                          icon: Icons.alarm,
                          title: 'Remind Me',
                          iconSize: 20,
                          textSize: 10,
                        ),
                        kwidth,
                        custombuttonwidget(
                          icon: Icons.info,
                          title: 'Info',
                          iconSize: 20,
                          textSize: 10,
                        ),
                        kwidth,
                      ],
                    ),
                  ),
                ],
              ),
              khight,
              const Text('Comming On Friday'),
              khight,
               Text(
                headings,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                     overflow: TextOverflow.ellipsis,
                ),
                           ),
              khight,
             Flexible(
               child: Text(
                  movieDescription,
                  style: TextStyle(color: Colors.grey,fontSize: 15),
                  // overflow: TextOverflow.ellipsis,
                ),
             ),
            ],
          ),
        ),
      ],
    );
  }
}

