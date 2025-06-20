import 'package:app/data/models/project_model.dart';
import 'package:equatable/equatable.dart';

class Project extends Equatable {
  final String id;
  final String title;
  final String description;
  final List<String> tags;
  final List<String> screenshots;

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.tags,
    required this.screenshots,
  });

  @override
  List<Object?> get props => [id, title, description, tags, screenshots];

  factory Project.fromModel(ProjectModel model) {
    return Project(
      id: model.id,
      title: model.title,
      description: model.description,
      tags: model.tags,
      screenshots: model.screenshots,
    );
  }
}
