import 'package:harry_potter/common/models/base_api.dart';

class Attribute {
  String slug;
  String name;
  String? effect;
  String? sideEffects;
  String? characteristics;
  String? time;
  String? difficulty;
  String? ingredients;
  String? inventors;
  String? manufacturers;
  String? image;
  String wiki;

  Attribute({
    required this.slug,
    required this.name,
    required this.effect,
    required this.sideEffects,
    required this.characteristics,
    required this.time,
    required this.difficulty,
    required this.ingredients,
    required this.inventors,
    required this.manufacturers,
    required this.image,
    required this.wiki,
  });

  factory Attribute.fromJson(Map<String, Object?> json) => Attribute(
        slug: json['slug'] as String,
        name: json['name'] as String,
        effect: json['effect'] as String?,
        sideEffects: json['sideEffects'] as String?,
        characteristics: json['characteristics'] as String?,
        time: json['time'] as String?,
        difficulty: json['difficulty'] as String?,
        ingredients: json['ingredients'] as String?,
        inventors: json['inventors'] as String?,
        manufacturers: json['manufacturers'] as String?,
        image: json['image'] as String?,
        wiki: json['wiki'] as String,
      );

  @override
  String toString() {
    return 'Attribute{slug: $slug, name: $name, effect: $effect, sideEffects: $sideEffects, characteristics: $characteristics, time: $time, difficulty: $difficulty, ingredients: $ingredients, inventors: $inventors, manufacturers: $manufacturers, image: $image, wiki: $wiki}';
  }
}

class Potion extends Categories{
  String id;
  String type;
  Attribute attribute;

  Potion({
    required this.id,
    required this.type,
    required this.attribute,
  });

  factory Potion.fromJson(Map<String, Object?> json) => Potion(
        id: json['id'] as String,
        type: json['type'] as String,
        attribute:
            Attribute.fromJson(json['attributes'] as Map<String, Object?>),
      );

  @override
  String toString() {
    return 'Potion{id: $id, type: $type, attribute: $attribute}';
  }
}
