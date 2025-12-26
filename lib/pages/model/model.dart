// sample data.....

// {
// "data": [
// {
// "video_id": "11173",
// "video_title": "Tenu Zyada Mohabbat Song | Tu Meri Main Tera Main Tera Tu Meri",
// "youtube_id": "Zkxqy33NGm0",
// "duration": "215",
// "uploaded": "2025-12-13T12:32:28Z",
// "view_count": "11627955",
// "video_owner": "UC_A7K2dXFsTMAciGmnNxy-Q",
// "thumb_url": "https://i.ytimg.com/vi/Zkxqy33NGm0/mqdefault.jpg",
// "movie_id": "1292"
//  },

// ignore_for_file: non_constant_identifier_names

class Items {
  static List<Data>? data;
  bool? result;
  String? view_count;

  Items({required data, required this.result, required this.view_count});

  factory Items.fromJson(Map<String, dynamic> json) {
    List<Data> decodedData = json["data"]
        .map<Data>(
          (items) => Data.fromJson(items),
        )
        .toList();
    return Items(
      data: decodedData,
      result: json["result"] as bool,
      view_count: json["view_count"],
    );
  }

  Map<String, dynamic> toJson() {
    return {"data": data, "result": result, "view_count": view_count};
  }
}

class Data {
  String? video_id;
  String? video_title;
  String? youtube_id;
  String? duration;
  String? uploaded;
  String? view_count;
  String? video_owner;
  String? thumb_url;
  String? movie_id;

  Data({
    required this.video_id,
    required this.video_title,
    required this.youtube_id,
    required this.duration,
    required this.uploaded,
    required this.view_count,
    required this.video_owner,
    required this.thumb_url,
    required this.movie_id,
  });

  //  json to object
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      video_id: json["video_id"] as String,
      video_title: json["video_title"] as String,
      youtube_id: json["youtube_id"] as String,
      duration: json["duration"] as String,
      uploaded: json["uploaded"] as String,
      view_count: json["view-count"] as String,
      video_owner: json["video_owner"] as String,
      thumb_url: json["thumb_url"] as String,
      movie_id: json["movie_id"] as String,
    );
  }

  // json

  Map<String, dynamic> toJson() {
    return {
      "video_id": video_id,
      "video_title": video_title,
      "youtube_id": youtube_id,
      "duration": duration,
      "uploaded": uploaded,
      "view_count": view_count,
      "video_owner": video_owner,
      "thumb_url": thumb_url,
      "movie_id": movie_id,
    };
  }
}

// complex json
