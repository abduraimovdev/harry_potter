import 'package:harry_potter/common/models/base_api.dart';

class Attribute {
  String slug;
  String title;
  String summary;
  List<String> directors;
  List<Object?> screenwriters;
  List<String> producers;
  List<String> cinematographers;
  List<String> editors;
  List<String> distributors;
  List<String> musicComposers;
  String releaseDate;
  String runningTime;
  String budget;
  String boxOffice;
  String rating;
  int order;
  String trailer;
  String? poster;
  String wiki;

  Attribute({
    required this.slug,
    required this.title,
    required this.summary,
    required this.directors,
    required this.screenwriters,
    required this.producers,
    required this.cinematographers,
    required this.editors,
    required this.distributors,
    required this.musicComposers,
    required this.releaseDate,
    required this.runningTime,
    required this.budget,
    required this.boxOffice,
    required this.rating,
    required this.order,
    required this.trailer,
    required this.poster,
    required this.wiki,
  });

  factory Attribute.fromJson(Map<String, Object?> json) {
    return Attribute(
      slug: json['slug'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String,
      directors: List<String>.from(json['directors'] as List),
      screenwriters: List<String>.from(json['screenwriters'] as List<Object?>),
      producers: List<String>.from(json['producers'] as List),
      cinematographers: List<String>.from(json['cinematographers'] as List),
      editors: List<String>.from(json['editors'] as List),
      distributors: List<String>.from(json['distributors'] as List),
      musicComposers: List<String>.from(json['music_composers'] as List),
      releaseDate: json['release_date'] as String,
      runningTime: json['running_time'] as String,
      budget: json['budget'] as String,
      boxOffice: json['box_office'] as String,
      rating: json['rating'] as String,
      order: json['order'] as int,
      trailer: json['trailer'] as String,
      poster: json['poster'] as String?,
      wiki: json['wiki'] as String,
    );
  }

  @override
  String toString() {
    return 'Attribute{slug: $slug, title: $title, summary: $summary, directors: $directors, screenwriters: $screenwriters, producers: $producers, cinematographers: $cinematographers, editors: $editors, distributors: $distributors, musicComposers: $musicComposers, releaseDate: $releaseDate, runningTime: $runningTime, budget: $budget, boxOffice: $boxOffice, rating: $rating, order: $order, trailer: $trailer, poster: $poster, wiki: $wiki}';
  }
}

class Movie  extends Categories{
  final String? id;
  final String? type;
  final Attribute attribute;

  Movie({
    required this.id,
    required this.type,
    required this.attribute,
  });

  factory Movie.fromJson(Map<String, Object?> json) {
    return Movie(
      id: json['id'] as String?,
      type: json['type'] as String?,
      attribute: Attribute.fromJson(json['attributes'] as Map<String, Object?>),
    );
  }

  @override
  String toString() {
    return 'Movie{id: $id, type: $type, attribute: $attribute}';
  }
}
