// import 'dart:math';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:netflix_clone/core/colors/constant.dart';
// import 'package:netflix_clone/presantation/widgets/appbar_widget.dart';

// class screendownload extends StatelessWidget {
//   screendownload({Key? key}) : super(key: key);

//   final _widgetList = [
//     _smartDownlods(),
//     Section2(),
//     Section3(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: PreferredSize(
//         child: AppbarWidget(title: "Downloads"),
//         preferredSize: Size.fromHeight(50),
//       ),
//       body: ListView.separated(
//           padding: const EdgeInsets.all(10),
//           itemBuilder: (context, index) => _widgetList[index],
//           separatorBuilder: (context, index) => const SizedBox(
//                 height: 25,
//               ),
//           itemCount: _widgetList.length),
//     );
//   }
// }

// // class Section2 extends StatelessWidget {
// //   Section2({Key? key}) : super(key: key);
//   // final List imageList = [
//   //   "https://www.nowrunning.com/content/movie/2018/minna-23659/Stills/minnal-murali_202189.jpg",
//   //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0gItetmAakdNdNIScpSmv8wryV_PWxZ4m_Q&usqp=CAU",
//   //   "https://igimages.gumlet.io/tamil/home/vikram-kamal-vjs-10752021m.jpg?w=376&dpr=2.6",
//   // ];

// //   @override
// //   Widget build(BuildContext context) {
// //     WidgetsBinding.instance!.addPostFrameCallback((_) {
// //        BlocProvider.of<DownloadsBloc>(context).add(DownloadsEvent.getDownloadsImage());
// //      });
// //     final Size size = MediaQuery.of(context).size;

// //     return Column(
// //       children: [
// //         Text(
// //           'Introducing Downloads for you',
// //           textAlign: TextAlign.center,
// //           style: TextStyle(
// //               color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
// //         ),
// //         khight,
// //         Text(
// //           'We will Download a personalised selection \nof nmovie  and shows for you, So there is\n always somthing to watch on your\ndevice',
// //           textAlign: TextAlign.center,
// //           style: TextStyle(
// //             color: Colors.grey,
// //             fontSize: 16,
// //           ),
// //         ),
// //         khight,
// //         BlocBuilder<DownloadsBloc, DownloadsState>(
// //           builder: (context, state) {
// //             return state.isLoading
// //                 ? const CircularProgressIndicator()
// //                 : SizedBox(
// //                     width: size.width,
// //                     height: size.height * 0.6,
// //                     child: state.isLoading
// //                         ? Center(child: const CircularProgressIndicator())
// //                         : Stack(
// //                             alignment: Alignment.center,
// //                             children: [
// //                               CircleAvatar(
// //                                 radius: size.width * 0.42,
// //                                 backgroundColor: Colors.grey.withOpacity(0.8),
// //                               ),
// //                               DwonloadsImageWidget(
// //                                 imageList:
// //                                     '$ImageAppendUrl${state.downloads[0].posterPath}',
// //                                 angle: 25,
// //                                 size: Size(
// //                                   size.width * 0.35,
// //                                   size.width * 0.55,
// //                                 ),
// //                                 margin: EdgeInsets.only(left: 170, top: 50),
// //                               ),
// //                               DwonloadsImageWidget(
// //                                 angle: -25,
// //                                 imageList:
// //                                     '$ImageAppendUrl${state.downloads[1].posterPath}',
// //                                 margin: EdgeInsets.only(right: 170, top: 50),
// //                                 size: Size(
// //                                   size.width * 0.35,
// //                                   size.width * 0.55,
// //                                 ),
// //                               ),
// //                               DwonloadsImageWidget(
// //                                 imageList:
// //                                     '$ImageAppendUrl${state.downloads[2].posterPath}',
// //                                 margin: EdgeInsets.only(bottom: 35, top: 50),
// //                                 size: Size(
// //                                   size.width * 0.46,
// //                                   size.width * 0.67,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                   );
// //           },
// //         ),
// //       ],
// //     );
// //   }
// // }

// class Section2 extends StatelessWidget {
//   Section2({Key? key}) : super(key: key);

//   final List image = [
//    "https://www.nowrunning.com/content/movie/2018/minna-23659/Stills/minnal-murali_202189.jpg",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0gItetmAakdNdNIScpSmv8wryV_PWxZ4m_Q&usqp=CAU",
//     "https://igimages.gumlet.io/tamil/home/vikram-kamal-vjs-10752021m.jpg?w=376&dpr=2.6",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         const Text(
//           "Introducing Downloads for you",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         khight,
//         const Text(
//           "We'll download a personalised selection of\nmovies and shows for you, so there's\nalways something for watch on your\ndevice.",
//           style: TextStyle(
//             color: Colors.grey,
//             fontSize: 16,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         khight,
//         SizedBox(
//           width: size.width,
//           height: size.height * .4,
//           //color: Colors.white,

//           //<<<<<Circle>>>>>//
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Center(
//                 child: CircleAvatar(
//                   radius: size.width * 0.38,
//                   backgroundColor: Colors.grey.withOpacity(0.5),
//                 ),
//               ),

//               //<<<<<Posters>>>>>//
//                   DwonloadsImageWidget(
//                 imageList: image[0],
//                 size: Size(size.width * .37, size.width * 0.54),
//                 margin: const EdgeInsets.only(left: 170, bottom: 32),
//                 angle: 17,
//               ),
//                   DwonloadsImageWidget(
//                 imageList: image[1],
//                 size: Size(size.width * .37, size.width * 0.54),
//                 margin: const EdgeInsets.only(right: 170, bottom: 32),
//                 angle: -17,
//               ),
//            DwonloadsImageWidget(
//                 imageList: image[2],
//                 size: Size(size.width * .43, size.width * 0.62),
//                 margin: const EdgeInsets.only(right: 0),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class Section3 extends StatelessWidget {
//   const Section3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: double.infinity,
//           child: ElevatedButton(
//             onPressed: () {},
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               child: Text(
//                 'Set Up',
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//             ),
//           ),
//         ),
//         khight,
//         MaterialButton(
//           color: Colors.white,
//           onPressed: () {},
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Text(
//               'See what you can download',
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class _smartDownlods extends StatelessWidget {
//   const _smartDownlods({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         kwidth,
//         Icon(
//           Icons.settings,
//           color: Colors.white,
//         ),
//         kwidth,
//         Text('Smart Downloads')
//       ],
//     );
//   }
// }

// class DwonloadsImageWidget extends StatelessWidget {
//   const DwonloadsImageWidget({
//     Key? key,
//     this.angle = 0,
//     required this.imageList,
//     required this.margin,
//     required this.size,
//   }) : super(key: key);

//   final String imageList;
//   final double angle;
//   final EdgeInsets margin;
//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: margin,
//       child: Transform.rotate(
//         angle: angle * pi / 180,
//         child: Container(
//           // margin: margin,
//           height: size.height,
//           width: size.width,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: NetworkImage(imageList),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';

import 'package:flutter/material.dart';

import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/infrastructure/api/htp_service.dart';
import 'package:netflix_clone/infrastructure/api/tmdb.dart';
import 'package:netflix_clone/presantation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: (context, index) => const SizedBox(height: 50),
        itemCount: _widgetList.length,
      ),
    );
  }
}

//<<<<<Section_1>>>>>//
class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings_rounded,
          color: Colors.white,
        ),
        kwidth,
        Text(
          "Smart Downloads",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

//<<<<<Section_2>>>>>//
class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);

  // final List image = [
  //   "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c069b806-a231-4655-990d-1cc4375444e8/d3e6plk-14712041-47d4-43f7-9806-8aa132e62941.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MwNjliODA2LWEyMzEtNDY1NS05OTBkLTFjYzQzNzU0NDRlOFwvZDNlNnBsay0xNDcxMjA0MS00N2Q0LTQzZjctOTgwNi04YWExMzJlNjI5NDEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.hQCWArhliw74v7BFoL3qRe-4UbqCuCDWlWW-l0-MGms",
  //   "https://www.joblo.com/wp-content/uploads/2021/08/shang-chi-character-poster-marvel-7.jpg",
  //   "https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_.jpg",
  // ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        khight,
        const Text(
          "We'll download a personalised selection of\nmovies and shows for you, so there's\nalways something for watch on your\ndevice.",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        khight,
        FutureBuilder(
          future: HttpServices().getupcoming(TMDB.upComing),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return SizedBox(
                width: size.width,
                height: size.height * .4,
                //color: Colors.white,

                //<<<<<Circle>>>>>//
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: size.width * 0.38,
                        backgroundColor: Colors.grey.withOpacity(0.5),
                      ),
                    ),

                    //<<<<<Posters>>>>>//
                    DownloadsImageWidget(
                      image: snapshot.data[2].posterPath,
                      size: Size(size.width * .37, size.width * 0.54),
                      margin: const EdgeInsets.only(left: 170, bottom: 32),
                      angle: 17,
                    ),
                    DownloadsImageWidget(
                      image: snapshot.data[3].posterPath,
                      size: Size(size.width * .37, size.width * 0.54),
                      margin: const EdgeInsets.only(right: 170, bottom: 32),
                      angle: -17,
                    ),
                    DownloadsImageWidget(
                      image: snapshot.data[1].posterPath,
                      size: Size(size.width * .43, size.width * 0.62),
                      margin: const EdgeInsets.only(right: 0),
                    ),
                  ],
                ),
              );
            }

            //----circularprogress---//
            return Container();
          },
        ),
      ],
    );
  }
}

//<<<<<Section_3>>>>>//
class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //<<<<<Icons>>>>>//
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Set Up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        khight,
        MaterialButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              "See what you can download",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}

//<<<<<Poster_Widget>>>>>//
class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.image,
    required this.margin,
    required this.size,
    this.angle = 0,
  }) : super(key: key);

  final String image;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: NetworkImage('${TMDB.imageId}$image'),
          ),
        ),
      ),
    );
  }
}
