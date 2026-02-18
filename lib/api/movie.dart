import 'package:api/api/provider/movie_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MovieScreen extends StatefulWidget {
  MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<MovieProvider>(context, listen: false);

      provider.fetchingData();

      _controller.addListener(
        () {
          if (_controller.position.pixels >=
                  _controller.position.maxScrollExtent - 200 &&
              !provider.isLoading) {
            provider.fetchingData();
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    print("called build function");
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie APP'),
      ),
      body: Consumer<MovieProvider>(
        builder: (ctx, movieProvider, child) {
          print("consumer function called");
          return ListView.builder(
            controller: _controller,
            itemCount: movieProvider.movieItems.length +
                (movieProvider.isLoading ? 1 : 0),
            itemBuilder: (context, index) {
              if (index >= movieProvider.movieItems.length) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              final dataIndex = movieProvider.movieItems[index];

//===> for  duration
              final int jsonsecond = int.parse(dataIndex.duration.toString());
              final Duration duration = Duration(seconds: jsonsecond);

              final String formatter =
                  // "${duration.inHours.toString().padLeft(2, '0')}:"
                  "${(duration.inMinutes % 60).toString().padLeft(2, '0')}:"
                  "${(duration.inSeconds % 60).toString().padLeft(2, '0')}";

              print(formatter);
//===> for  viewcount
              final view = dataIndex.view_count;
              print(view);
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: MediaQuery.of(context).size.width / 1,
                      child: Image.network(
                        dataIndex.thumb_url.toString(),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "title: ${dataIndex.video_title}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 20,
                            children: [
                              Text(
                                "duration:${formatter}",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "view: ${NumberFormat('#,##,##0').format(view)}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
