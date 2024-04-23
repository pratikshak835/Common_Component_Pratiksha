class PageModel{
  final String title;
  final String description;
  final String? code;
  PageModel({required this.title, required this.description, this.code});

  factory PageModel.fromJson(Map<String, dynamic> json) {
    return PageModel(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      code: json['code'] ?? ''
    );
  }
}