// To parse this JSON data, do
//
//     final imagesFeed = imagesFeedFromJson(jsonString);

import 'dart:convert';

List<ImagesFeed> imagesFeedFromJson(String str) => List<ImagesFeed>.from(json.decode(str).map((x) => ImagesFeed.fromJson(x)));

String imagesFeedToJson(List<ImagesFeed> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImagesFeed {
  ImagesFeed({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  String id;
  String author;
  int width;
  int height;
  String url;
  String downloadUrl;

  factory ImagesFeed.fromJson(Map<String, dynamic> json) => ImagesFeed(
    id: json["id"],
    author: json["author"],
    width: json["width"],
    height: json["height"],
    url: json["url"],
    downloadUrl: json["download_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "author": author,
    "width": width,
    "height": height,
    "url": url,
    "download_url": downloadUrl,
  };
}
