import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/infrastructure/api/htp_service.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';
import 'package:netflix_clone/presantation/home/custom_button_widget.dart';
import 'package:netflix_clone/presantation/new%20and%20hot/widgets/commingSoon_widget.dart';
import 'package:netflix_clone/presantation/new%20and%20hot/widgets/everyone_watchin_widget.dart';
import 'package:netflix_clone/presantation/widgets/appbar_widget.dart';
import 'package:netflix_clone/presantation/widgets/video_widget.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              title: Text(
                "New & Hot",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
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
              ],
              
              bottom: TabBar(
               
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  isScrollable: true,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                    
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  tabs: const [
                    Tab(
                      text: "🍿 Comming Soon",
                    ),
                    Tab(
                      text: "👀 Everyone's Watching",
                    ),
                  ]),
            ),
          ),
          body: TabBarView(children: [
            _buildCommingSoon(),
            _buildEveryonesWatching(),
          ])),
    );
  }

  Widget _buildCommingSoon() {
    return FutureBuilder(
        future: HttpServices().getupcoming(TMDB.upComing),
        builder: (context, AsyncSnapshot snapshot) {
          List<dynamic> list = snapshot.data ?? [];
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, index) {
                return CommingSoonWidget(
                  headings: "${list[index].title}",
                  movieDescription: '${list[index].overview}',
                  index: index,
                  image: "${list[index].posterPath}",
                );
              },
            );
          }

          //---circularindicator---//

          return vidieovidgets(imageurl: '');
        });
  }

  Widget _buildEveryonesWatching() {
    return FutureBuilder(
      future: HttpServices().getupcoming(TMDB.movies),
      builder: (context, AsyncSnapshot snapshot) {
        List<dynamic> list = snapshot.data ?? [];
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return everyonesWatching(image2URL:"${list[index].posterPath}", movieTitle: "${list[index].title}", movieDescription:'${list[index].overview}', );
            },
          );
        }
        return CircularProgressIndicator();
      },
      
    );
  }
}
