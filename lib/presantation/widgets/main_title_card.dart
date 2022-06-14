import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/infrastructure/api/htp_service.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';
import 'package:netflix_clone/presantation/widgets/main_card.dart';
import 'package:netflix_clone/presantation/widgets/main_title_widget.dart';

class mainTitleCard extends StatelessWidget {
  const mainTitleCard({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitle(title: title),
        khight,
        FutureBuilder(
          future: HttpServices().getupcoming(url),
          builder: (context, AsyncSnapshot snapshot) {
            List<dynamic> list = snapshot.data ?? [];
            print(list);

            if (snapshot.hasData) {
              return LimitedBox(
                maxHeight: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (index) {
                    return maincard(
                      imageurl: '${list[index].posterPath}',
                    );
                  }),
                ),
              );
            }

            //----circularprogras---///
            return maincard(imageurl: "");
          },
        ),
      ],
    );
  }
}
