import 'package:flutter/material.dart';
import 'package:netflix_clone/infrastructure/api/htp_service.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';
import 'package:netflix_clone/presantation/home/custom_button_widget.dart';

class backgroundCardwidget extends StatelessWidget {
  const backgroundCardwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
          future: HttpServices().getupcoming(TMDB.trending),
          builder: (context, AsyncSnapshot snapshot) {
            List<dynamic> list = snapshot.data ?? [];
            if (snapshot.hasData) {
              return Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // fit: BoxFit.cover,
                    image: NetworkImage(
                        '${TMDB.imageId}${snapshot.data[5].posterPath}'),
                  ),
                ),
              );
            }

            //---circularprogress pakaram//
            return Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // fit: BoxFit.cover,
                    image: NetworkImage(
                       ""),
                  ),
                ),
              );
          },
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custombuttonwidget(icon: Icons.add, title: 'My List'),
                _textbutton(),
                custombuttonwidget(icon: Icons.info, title: 'Info')
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _textbutton() {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        icon: const Icon(
          Icons.play_arrow,
          size: 25,
          color: Colors.black,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ));
  }
}
