
class Pagination {
  int? current;
  int? records;

  Pagination({this.current, this.records});

  Pagination.fromJson(Map<String, dynamic> json) {
    current = json['current'];
    records = json['records'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  {};
    data['current'] = current;
    data['records'] = records;
    return data;
  }

  @override
  String toString() {
    return 'Pagination{current: $current, records: $records}';
  }
}
