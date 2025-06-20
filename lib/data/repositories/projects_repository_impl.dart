import 'package:app/data/datasources/projects_remote_data_source.dart';
import 'package:app/data/models/project_model.dart';
import 'package:app/domain/entities/project.dart';
import 'package:app/domain/repositories/projects_repository.dart';

class ProjectsRepositoryImpl implements ProjectsRepository {
  final ProjectsRemoteDataSource remoteDataSource;

  ProjectsRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Project>> getProjects() async {
    List<ProjectModel> projects = await remoteDataSource.getProjects();
    return projects.map((p) => Project.fromModel(p)).toList();
  }
}
