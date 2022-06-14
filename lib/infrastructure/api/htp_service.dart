import 'dart:convert';

import 'package:http/http.dart';
import 'package:netflix_clone/infrastructure/Datamodels/model/model.dart';

class HttpServices {
  // Future<List<dynamic>> getTrending(String listtype) async {
  //   Response response = await get(Uri.parse(listtype));
  //   if (response.statusCode == 200) {
  //     final decodedJson = jsonDecode(response.body);
  //     List<dynamic> list = decodedJson['results']
  //         .map((item) => Trending.fromJson(item))
  //         .toList();
  //     return list;
  //   } else {
  //     throw 'Couldn\t get list';
  //   }
  // }

  Future<List<dynamic>> getupcoming(String listType) async {
    Response res = await get(Uri.parse(listType));
    if (res.statusCode == 200) {
      final decodedJson = jsonDecode(res.body);
      List<dynamic> list = decodedJson['results']
          .map((item) => MovieDataModel.fromJson(item))
          .toList();
      return list;
    } else {
      throw 'Couldn\t get list';
    }
  }
}
