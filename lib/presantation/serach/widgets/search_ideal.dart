import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/infrastructure/Datamodels/model/model.dart';
import 'package:netflix_clone/infrastructure/api/api.dart';
import 'package:netflix_clone/infrastructure/api/htp_service.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';
import 'package:netflix_clone/presantation/serach/widgets/titile.dart';

// const imageurl =
//     "https://i.pinimg.com/originals/29/03/6c/29036c01210cf138d94c48db17acb94a.jpg";

class Searchidelwidget extends StatelessWidget {
  const Searchidelwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: HttpServices().getupcoming(TMDB.searchItems),
        builder: (context, AsyncSnapshot snapshot) {
          List<dynamic> list = snapshot.data ?? [];
          if (snapshot.hasData) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Searchtexttitle(title: 'Top Searches'),
                khight,
                Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => TopsearchTile(
                            image: '${list[index].posterPath}',
                            title: '${list[index].title}',
                          ),
                      separatorBuilder: (context, index) => khight,
                      itemCount: 20),
                )
              ],
            );
          }
          return Container();
        });
  }
}

class TopsearchTile extends StatelessWidget {
  TopsearchTile({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 68,
          width: screenwidth * 0.34,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('${TMDB.imageId}$image'),
            ),
          ),
        ),
        kwidth,
        Expanded(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.black,
            child: Center(
              child: Icon(
                CupertinoIcons.play_fill,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
