import 'package:harry_potter/common/models/base_api.dart';

class Attribute {
  String slug;
  String name;
  String? incantation;
  String? category;
  String? effect;
  String? light;
  String? hand;
  String? creator;
  String? image;
  String wiki;

  Attribute({
    required this.slug,
    required this.name,
    required this.incantation,
    required this.category,
    required this.effect,
    required this.light,
    required this.hand,
    required this.creator,
    required this.image,
    required this.wiki,
  });

  factory Attribute.fromJson(Map<String, Object?> json) => Attribute(
        slug: json['slug'] as String,
        name: json['name'] as String,
        incantation: json['incantation'] as String?,
        category: json['category'] as String?,
        effect: json['effect'] as String?,
        light: json['light'] as String?,
        hand: json['hand'] as String?,
        creator: json['creator'] as String?,
        image: json['image'] as String?,
        wiki: json['wiki'] as String,
      );

  @override
  String toString() {
    return 'Attributes{slug: $slug, name: $name, incantation: $incantation, category: $category, effect: $effect, light: $light, hand: $hand, creator: $creator, image: $image, wiki: $wiki}';
  }
}

class Spell  extends Categories{
  String id;
  String type;
  Attribute attribute;

  Spell({
    required this.id,
    required this.type,
    required this.attribute,
  });

  factory Spell.fromJson(Map<String, Object?> json) => Spell(
        id: json['id'] as String,
        type: json['type'] as String,
        attribute:
            Attribute.fromJson(json['attributes'] as Map<String, Object?>),
      );

  @override
  String toString() {
    return 'Spell{id: $id, type: $type, attribute: $attribute}';
  }
}
