import 'package:flutter/material.dart';

ValueNotifier<int>IndexChangeNotifier = ValueNotifier(0);

class Bottamnavigaionwidget extends StatelessWidget {
  const Bottamnavigaionwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: IndexChangeNotifier, builder:(context, int newIndex, _){
        return BottomNavigationBar(

      currentIndex: newIndex,
      onTap: (index){
        IndexChangeNotifier.value =index;
      },
      elevation: 0,
      type: BottomNavigationBarType.fixed ,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(
        color: Colors.grey,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.grey,
      ),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.collections), label: 'New & Hot'),
        BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions), label: 'FastLaugh'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Dwonloads'),
      ],
    );
    });
  }
}
