import 'base_api.dart';

class Data {
  String? id;
  String? type;

  Data({
    required this.id,
    required this.type,
  });

  factory Data.fromJson(Map<String, Object?> json) => Data(
    id: json['id'] as String?,
    type: json['type'] as String?,
  );

  @override
  String toString() {
    return 'Type{id: $id, type: $type}';
  }
}

class Chapter {
  List<Data>? data;

  Chapter({
    required this.data,
  });

  factory Chapter.fromJson(Map<String, Object?> json) => Chapter(
    data: (json['data'] as List)
        .map<Data>((json) => Data.fromJson(json))
        .toList(),
  );

  @override
  String toString() {
    return 'Chapter{data: $data}';
  }
}

class Relationship {
  Chapter? chapter;

  Relationship({
    required this.chapter,
  });

  factory Relationship.fromJson(Map<String, Object?> json) => Relationship(
    chapter: Chapter.fromJson(json['chapters'] as Map<String, Object?>),
  );

  @override
  String toString() {
    return 'Relationship{chapter: $chapter}';
  }
}

class Attribute {
  String? slug;
  String? title;
  String? summary;
  String? author;
  String? releaseDate;
  String? dedication;
  int? pages;
  int? order;
  String? cover;
  String? wiki;

  Attribute({
    required this.slug,
    required this.title,
    required this.summary,
    required this.author,
    required this.releaseDate,
    required this.dedication,
    required this.pages,
    required this.order,
    required this.cover,
    required this.wiki,
  });

  factory Attribute.fromJson(Map<String, Object?> json) => Attribute(
    slug: json['slug'] as String?,
    title: json['title'] as String?,
    summary: json['summary'] as String?,
    author: json['author'] as String?,
    releaseDate: json['release_date'] as String?,
    dedication: json['dedication'] as String?,
    pages: json['pages'] as int?,
    order: json['order'] as int?,
    cover: json['cover'] as String?,
    wiki: json['wiki'] as String?,
  );

  @override
  String toString() {
    return 'Attribute{slug: $slug, title: $title, summary: $summary, author: $author, releaseDate: $releaseDate, dedication: $dedication, pages: $pages, order: $order, cover: $cover, wiki: $wiki}';
  }
}

class Book extends Categories{
  String? id;
  String? type;
  Attribute? attribute;
  Relationship? relationship;

  Book({
    required this.id,
    required this.type,
    required this.attribute,
    required this.relationship,
  });

  factory Book.fromJson(Map<String, Object?> json) => Book(
    id: json['id'] as String?,
    type: json['type'] as String?,
    attribute:
    Attribute.fromJson(json['attributes'] as Map<String, Object?>),
    relationship: json['relationships'] != null ?Relationship.fromJson(
        json['relationships'] as Map<String, Object?>) : null,
  );


  @override
  String toString() {
    return 'Book{id: $id, type: $type, attribute: $attribute, relationship: $relationship}';
  }
}