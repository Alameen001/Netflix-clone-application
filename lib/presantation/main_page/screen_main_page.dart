import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presantation/downloads/screen_download.dart';
import 'package:netflix_clone/presantation/fastLafgh/fast_lafgh.dart';
import 'package:netflix_clone/presantation/home/screen_home.dart';

import 'package:netflix_clone/presantation/main_page/widgets/bottam_nav.dart';
import 'package:netflix_clone/presantation/new%20and%20hot/screen_new_and_hot.dart';
import 'package:netflix_clone/presantation/serach/search.dart';

class Sceenmainpage extends StatelessWidget {
  Sceenmainpage({Key? key}) : super(key: key);
  final _pages = [
    Screenhome(),
    ScreenNewandHot(),
    Screenfastlafgh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: IndexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
      ),
      bottomNavigationBar: Bottamnavigaionwidget(),
    );
  }
}
