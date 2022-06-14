import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';
import 'package:netflix_clone/presantation/home/background_card_widget.dart';
import 'package:netflix_clone/presantation/home/custom_button_widget.dart';
import 'package:netflix_clone/presantation/home/number_card.dart';
import 'package:netflix_clone/presantation/home/number_title_card.dart';
import 'package:netflix_clone/presantation/widgets/main_card.dart';

import 'package:netflix_clone/presantation/widgets/main_title_card.dart';
import 'package:netflix_clone/presantation/widgets/main_title_widget.dart';

ValueNotifier<bool> scrolNotifier = ValueNotifier(true);

class Screenhome extends StatelessWidget {
  const Screenhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrolNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scrolNotifier.value = false;
                    scrolNotifier.notifyListeners();
                    print(index);
                  }
                  if (direction == ScrollDirection.forward) {
                    scrolNotifier.value = true;
                    scrolNotifier.notifyListeners();
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        Column(
                          children: const [
                            backgroundCardwidget(),
                            khight,
                            mainTitleCard(title: 'Released in the Past Year', url: TMDB.movies,),
                            khight,
                            mainTitleCard(title: 'Trending Now', url: TMDB.popular,),
                            khight,
                            numbertitlecard(top10: TMDB.top10,),
                            khight,
                            mainTitleCard(title: 'Tense Dramas', url: TMDB.searchItems,),
                            khight,
                            mainTitleCard(title: 'South Indian Cinema', url: TMDB.trending,),
                            khight,
                          ],
                        ),
                      ],
                    ),
                    scrolNotifier.value == true
                        ? AnimatedContainer(
                          duration: const Duration(microseconds: 1000),
                            width: double.infinity,
                            height: 90,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      "https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png",
                                      width: 65,
                                      height: 65,
                                    ),
                                    const Spacer(),
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
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'TV Shows',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Movies',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text('Categories',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ),
                          )
                        : khight,
                  ],
                ),
              );
            }));
  }
}
