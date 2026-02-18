import 'dart:convert';

import 'package:api/model/movies_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

final apiProvider = FutureProvider<List<DataModel>>(
  (Ref ref) async {
    final String url =
        "https://api.indiatvshowz.com/v1/getVideos.php?type=song&start-index=1&max-results=20&language_id=1";
    final Uri uri = Uri.parse(url);
    final response = await http.get(
      uri,
    );
    print("==> statuscode: ${response.statusCode}");
    // print(response.body);
    if (response.statusCode == 200) {
      final Map<String, dynamic> decodedData =
          jsonDecode(response.body) as Map<String, dynamic>;

      final dataList = decodedData["data"] as List<dynamic>;
      print(decodedData);

      return dataList.map((item) => DataModel.fromJson(item)).toList();
    } else {
      throw Exception("api error ${response.statusCode}");
    }
  },
);

class ApiWithRiverpod extends ConsumerWidget {
  const ApiWithRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(apiProvider);
    // print("$provider");
    return Scaffold(
      appBar: AppBar(
        title: Text("Api with riverpod"),
      ),
      body: provider.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final indexed = data[index];
            final int seconds = indexed.duration as int;

            final Duration duration = Duration(seconds: seconds);

            final formatter =
                "${(duration.inMinutes % 60).toString().padLeft(2, '0')}:"
                "${(duration.inSeconds % 60).toString().padLeft(2, '')}";

            return Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  // decoration: BoxDecoration(color: Colors.blue),
                  child: Image.network(
                    indexed.thumb_url,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Text(
                    indexed.video_title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Row(
                    spacing: 20,
                    children: [
                      Text(
                        "view:${NumberFormat("#,##,###").format(indexed.view_count)}",
                      ),
                      Text(
                        "Duration:${formatter}",
                      ),
                    ],
                  ),
                ),
              ],
            );
            //    ListTile(
            //     leading: Text(data[index]["video_id"].toString()),
            //     title: Text(data[index]["video_title"]),
            //     // subtitle: Text(data[index][""]),
            // );
          },
        ),
        error: (err, stack) => Center(child: Text("Error :$err")),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
