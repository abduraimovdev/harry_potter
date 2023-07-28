import 'package:harry_potter/common/models/base_model/links.dart';
import 'package:harry_potter/common/models/base_model/meta.dart';
import 'package:harry_potter/common/models/character_model.dart';
import 'package:harry_potter/common/models/movie_model.dart';
import 'package:harry_potter/common/models/potion_model.dart';
import 'package:harry_potter/common/models/spell_model.dart';
import 'book_model.dart';

class BaseApi<T extends Categories> {
  List<T>? category;
  Meta? meta;
  Links? links;

  BaseApi({this.category, this.meta, this.links});

  BaseApi.fromJson(Map<String, dynamic> json) {
    final response = json['data'];
    if (response != null) {
      // print(response);

      // if (T.toString() == "Book") {
      //   category = List<Map<String, Object?>>.from(response).map((e) => Book.fromJson(e)).toList() as List<T>;
      // }

      category = switch (T) {
        (Book) => (response as List).map((e) => Book.fromJson(e)).toList(),
      (Movie) => (response as List).map((e) => Movie.fromJson(e)).toList(),
      (Spell) => (response as List).map((e) => Spell.fromJson(e)).toList(),
      (Potion) => (response as List).map((e) => Potion.fromJson(e)).toList(),
      (Character) => (response as List).map((e) => Character.fromJson(e)).toList(),
      _ => [],
      }.cast<T>();

    }
    meta = json['meta'] != null ?  Meta.fromJson(json['meta']) : null;
    links = json['links'] != null ?  Links.fromJson(json['links']) : null;
  }

  @override
  String toString() {
    return 'BaseApi{category: $category, meta: $meta, links: $links}';
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  {};
    if (category != null) {
      data['movie'] = category!.map((v) => v.toJson()).toList();
    }
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    if (links != null) {
      data['links'] = links!.toJson();
    }
    return data;
  }


}

class Categories {
  Map<String, dynamic> toJson() => {};
}