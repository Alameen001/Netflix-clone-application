import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/infrastructure/api/htp_service.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';
import 'package:netflix_clone/presantation/serach/widgets/titile.dart';

const imageurl =
    "https://www.nowrunning.com/content/movie/2018/minna-23659/Stills/minnal-murali_202189.jpg";

class SearchReasultwidget extends StatelessWidget {
   SearchReasultwidget({Key? key,required this. url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: HttpServices().getupcoming(url),
      builder: (context, AsyncSnapshot snapshot) {
         List<dynamic> imageList = snapshot.data??[];
        if (snapshot.hasData) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Searchtexttitle(title: 'Movies & TV '),
              khight,
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 1.5,
                  children: List.generate(20, (index) {
                    return SearchresulItem(
                       image:   '${imageList[index].posterPath}',
                    );
                  }),
                ),
              )
            ],
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class SearchresulItem extends StatelessWidget {
  const SearchresulItem({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage( '${TMDB.imageId}$image'),
        ),
      ),
    );
  }
}
