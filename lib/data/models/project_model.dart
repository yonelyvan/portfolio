class ProjectModel {
  final String id;
  final String title;
  final String description;
  final List<String> tags;
  final List<String> screenshots;

  ProjectModel({
    required this.id,
    required this.title,
    required this.description,
    required this.tags,
    required this.screenshots,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      tags: List<String>.from(json['tags']),
      screenshots: List<String>.from(json['screenshots']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'tags': tags,
      'screenshots': screenshots,
    };
  }
}
