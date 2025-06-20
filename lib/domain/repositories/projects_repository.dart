import 'package:app/domain/entities/project.dart';

abstract class ProjectsRepository {
  /// Returns a [List] of [Project]
  Future<List<Project>> getProjects();
}
