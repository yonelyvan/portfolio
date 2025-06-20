import 'dart:convert';
import 'dart:developer';

import 'package:app/data/datasources/projects_remote_data_source.dart';
import 'package:app/data/models/project_model.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

class ProjectsRemoteDataSourceImpl implements ProjectsRemoteDataSource {
  ProjectsRemoteDataSourceImpl();

  @override
  Future<List<ProjectModel>> getProjects() async {
    List<ProjectModel> projects = [];
    try {
      final String jsonString =
          await rootBundle.loadString('assets/data/apps.json');
      final Map<String, dynamic> data = jsonDecode(jsonString);
      log("Raw data keys: ${data.keys}");
      log("Projects data: ${data['projects']}");
      final List<dynamic> projectsJson = data['projects'];

      return projectsJson.map((p) => ProjectModel.fromJson(p)).toList();
    } catch (error, stackTrace) {
      final logger = Logger();
      logger.e(error, stackTrace: stackTrace);
      return projects;
    }
  }
}
