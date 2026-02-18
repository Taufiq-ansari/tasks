class MoviesModel {
  final List<DataModel> data;
  final bool result;
  final String video_count;

  MoviesModel({
    required this.data,
    required this.result,
    required this.video_count,
  });

  // fromJson
  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    List<DataModel> decodedFromJson = json["data"]
        .map<DataModel>(
          (item) => DataModel.fromJson(item),
        )
        .toList();

    return MoviesModel(
      data: decodedFromJson,
      result: json["result"],
      video_count: json["video_count"],
    );
  }
  // toMap
}

class DataModel {
  final String video_title;
  final int view_count;
  final int? duration;
  final String thumb_url;

  DataModel({
    required this.video_title,
    required this.view_count,
    required this.duration,
    required this.thumb_url,
  });

  @override
  String toString() {
    return 'DataModel(video_title: $video_title, $thumb_url: $view_count, duration:$duration, thumb_url:$thumb_url)';
  }

  // fromJson

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      video_title: json["video_title"],
      view_count: int.tryParse(json["view_count"]?.toString() ?? '') ?? 0,
      duration: int.tryParse(json["duration"]?.toString() ?? '') ?? 0,
      thumb_url: json["thumb_url"],
    );
  }
  // toMap

  toMap(Map<String, dynamic> map) {
    return {
      "video_title": video_title,
      "view_count": view_count,
      "duration": duration,
      "thumb_url": thumb_url,
    };
  }
}
