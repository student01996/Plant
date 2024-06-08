class DataModel {
  final int id;
  final String name;
  final String tag;
  final String color;
  final List<Criteria> criteria;

  DataModel({
    required this.id,
    required this.name,
    required this.tag,
    required this.color,
    required this.criteria,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    List<Criteria> criteriaList = [];
    if (json['criteria'] != null) {
      json['criteria'].forEach((criteriaJson) {
        criteriaList.add(Criteria.fromJson(criteriaJson));
      });
    }
    return DataModel(
      id: json['id'],
      name: json['name'],
      tag: json['tag'],
      color: json['color'],
      criteria: criteriaList,
    );
  }
}

class Criteria {
  final String type;
  final String text;
  final Map<String, dynamic>? variable;

  Criteria({
    required this.type,
    required this.text,
    this.variable,
  });

  factory Criteria.fromJson(Map<String, dynamic> json) {
    return Criteria(
      type: json['type'],
      text: json['text'],
      variable: json['variable'],
    );
  }
}
