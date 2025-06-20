import 'package:app/domain/entities/project.dart';
import 'package:app/domain/repositories/projects_repository.dart';

class GetProfile {
  final ProjectsRepository repository;

  GetProfile(this.repository);

  Future<List<Project>> call() async {
    return await repository.getProjects();
  }
}
