class TableRowModel {
  final String name;
  final String required;
  final String description;
  final String defaultVal;

  TableRowModel({
    required this.name,
    required this.required,
    required this.description,
    required this.defaultVal,
  });

  factory TableRowModel.fromJson(Map<String, dynamic> json) {
    return TableRowModel(
      name: json['name'] ?? '',
      required: json['required'] ?? '',
      description: json['description'] ?? '',
      defaultVal: json['default'] ?? '',
    );
  }
}