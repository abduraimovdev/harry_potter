
class Links {
  String? self;
  String? current;

  Links({this.self, this.current});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    current = json['current'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  {};
    data['self'] = self;
    data['current'] = current;
    return data;
  }

  @override
  String toString() {
    return 'Links{self: $self, current: $current}';
  }
}
