import 'package:harry_potter/common/models/base_api.dart';

class Attribute {
  String? slug;
  String name;
  String? born;
  String? died;
  String? gender;
  String? species;
  String? height;
  String? weight;
  String? hairColor;
  String? eyeColor;
  String? skinColor;
  String? bloodStatus;
  String? maritalStatus;
  String? nationality;
  String? animagus;
  String? boggart;
  String? house;
  String? patronus;
  List<String>? aliasNames;
  List<String>? familyMembers;
  List<String>? jobs;
  List<String>? romances;
  List<String>? titles;
  List<String>? wands;
  String? image;
  String? wiki;

  Attribute({
    required this.slug,
    required this.name,
    required this.born,
    required this.died,
    required this.gender,
    required this.species,
    required this.height,
    required this.weight,
    required this.hairColor,
    required this.eyeColor,
    required this.skinColor,
    required this.bloodStatus,
    required this.maritalStatus,
    required this.nationality,
    required this.animagus,
    required this.boggart,
    required this.house,
    required this.patronus,
    required this.aliasNames,
    required this.familyMembers,
    required this.jobs,
    required this.romances,
    required this.titles,
    required this.wands,
    required this.image,
    required this.wiki,
  });

  factory Attribute.fromJson(Map<String, Object?> json) => Attribute(
        slug: json["slug"] as String?,
        name: json["name"] as String,
        born: json["born"] as String?,
        died: json["died"] as String?,
        gender: json["gender"] as String?,
        species: json["species"] as String?,
        height: json["height"] as String?,
        weight: json["weight"] as String?,
        hairColor: json["hair_color"] as String?,
        eyeColor: json["eye_color"] as String?,
        skinColor: json["skin_color"] as String?,
        bloodStatus: json["blood_status"] as String?,
        maritalStatus: json["marital_status"] as String?,
        nationality: json["nationality"] as String?,
        animagus: json["animagus"] as String?,
        boggart: json["boggart"] as String?,
        house: json["house"] as String?,
        patronus: json["patronus"] as String?,
        aliasNames: (json["alias_names"] as List?)
            ?.map((value) => value as String)
            .toList(),
        familyMembers: (json["family_members"] as List?)
            ?.map((value) => value as String)
            .toList(),
        jobs: (json["jobs"] as List?)?.map((value) => value as String).toList(),
        romances: (json["romances"] as List?)
            ?.map((value) => value as String)
            .toList(),
        titles:
            (json["titles"] as List?)?.map((value) => value as String).toList(),
        wands:
            (json["wands"] as List?)?.map((value) => value as String).toList(),
        image: json["image"] as String?,
        wiki: json['wiki'] as String?,
      );

  @override
  String toString() {
    return 'Attribute{slug: $slug, name: $name, born: $born, died: $died, gender: $gender, species: $species, height: $height, weight: $weight, hairColor: $hairColor, eyeColor: $eyeColor, skinColor: $skinColor, bloodStatus: $bloodStatus, maritalStatus: $maritalStatus, nationality: $nationality, animagus: $animagus, boggart: $boggart, house: $house, patronus: $patronus, aliasNames: $aliasNames, familyMembers: $familyMembers, jobs: $jobs, romances: $romances, titles: $titles, wands: $wands, image: $image, wiki: $wiki}';
  }
}

class Character extends Categories{
  String? data;
  String id;
  String type;
  Attribute attribute;

  Character({
    required this.data,
    required this.id,
    required this.type,
    required this.attribute,
  });

  factory Character.fromJson(Map<String, Object?> json) => Character(
        data: json["data"] as String?,
        id: json["id"] as String,
        type: json["type"] as String,
        attribute:
            Attribute.fromJson(json["attributes"] as Map<String, Object?>),
      );

  @override
  String toString() {
    return 'Character{data: $data, id: $id, type: $type, attribute: $attribute}';
  }
}
