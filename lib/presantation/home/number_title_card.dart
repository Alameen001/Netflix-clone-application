import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/infrastructure/api/htp_service.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';
import 'package:netflix_clone/presantation/home/number_card.dart';
import 'package:netflix_clone/presantation/widgets/main_title_widget.dart';

class numbertitlecard extends StatelessWidget {
  const numbertitlecard({
    Key? key,required this.top10,
  }) : super(key: key);
  final String top10;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitle(title: 'Top 10 TV Shows In India Today '),
        khight,
        FutureBuilder(
          future: HttpServices().getupcoming(top10),
          builder: (context, AsyncSnapshot snapshot) {
            List<dynamic> list =snapshot.data??[];
           if(snapshot.hasData){
            return LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return Numbercardwidget(
                    index: index,
                    image:"${list[index].posterPath}"
                  );
                }),
              ),
            );
           }
           return Numbercardwidget(index: 0, image: '');
            
          }
        ),
      ],
    );
  }
}
