import 'package:flutter/material.dart';
import 'package:netflix_clone/presantation/fastLafgh/widgets/vidieo_list_item.dart';

class Screenfastlafgh extends StatelessWidget {
  const Screenfastlafgh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical ,
          children: List.generate(
            20,
            (index) {
              return Vidieolistitem(index: index);
            },
          ),
        ),
      ),
    );
  }
}
