import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/serach/widgets/search_ideal.dart';
import 'package:netflix_clone/presantation/serach/widgets/search_resul.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  bool searcg = false;
  String? result;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    String searchresult =
        "https://api.themoviedb.org/3/search/tv?api_key=1567a7f85ee7cc55e7393d5fff815752&language=en-US&page=1&query=$result&include_adult=false";
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                
                controller: controller,
                onChanged: (value) {
                  setState(() {
                    searcg = true;    
                    result = value;
                  });
                },
                onSuffixTap: () {
                  setState(() {
                    searcg = false;
                    controller.clear();
                  });
                },
                backgroundColor: Colors.grey.withOpacity(0.5),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(color: Colors.white),
              ),
              khight,
              // const Text(
              //   'Top Searches',
              //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              // ),
              // khight,
              //searcg ==false;

              Expanded(
                  child: searcg == false
                      ? Searchidelwidget()
                      : SearchReasultwidget(url: searchresult,)),
              //Expanded(child: SearchReasultwidget())
            ],
          ),
        ),
      ),
    );
  }
}
