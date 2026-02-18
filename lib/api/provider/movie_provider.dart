import 'dart:convert';

import 'package:api/model/movies_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MovieProvider extends ChangeNotifier {
  List<DataModel> movieItems = [];

  // List<Map<String, dynamic>> getMovie() => _movieItems;
  bool isLoading = false;
  int startIndex = 1;
  int limit = 20;

  fetchingData() async {
    if (isLoading) return;

    isLoading = true;
    notifyListeners();

    final String url =
        "https://api.indiatvshowz.com/v1/getVideos.php?type=song&start-index=$startIndex&max-results=$limit&language_id=1";
    final Uri uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      final List<dynamic> movieList = decodedData["data"];

      print(decodedData['data']);
      // print(movieItems);

      movieItems.addAll(
        movieList.map((e) => DataModel.fromJson(e)).toList(),
      );
      startIndex += limit;
    } else {
      print("${response.statusCode}");
    }

    isLoading = false;
    notifyListeners();
  }
}
