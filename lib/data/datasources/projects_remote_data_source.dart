import 'package:app/data/models/project_model.dart';

abstract class ProjectsRemoteDataSource {
  Future<List<ProjectModel>> getProjects();
}
