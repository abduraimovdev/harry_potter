
import 'package:harry_potter/common/models/base_model/paganation.dart';

class Meta {
  Pagination? pagination;
  String? copyright;
  String? generatedAt;

  Meta({this.pagination, this.copyright, this.generatedAt});

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ?  Pagination.fromJson(json['pagination'])
        : null;
    copyright = json['copyright'];
    generatedAt = json['generated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  {};
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    data['copyright'] = copyright;
    data['generated_at'] = generatedAt;
    return data;
  }

  @override
  String toString() {
    return 'Meta{pagination: $pagination, copyright: $copyright, generatedAt: $generatedAt}';
  }
}
