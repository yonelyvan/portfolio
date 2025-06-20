import 'dart:developer';

import 'package:app/data/datasources/projects_remote_data_source.dart';
import 'package:app/data/datasources/projects_remote_data_source_impl.dart';
import 'package:app/data/repositories/projects_repository_impl.dart';
import 'package:app/domain/entities/project.dart';
import 'package:app/domain/repositories/projects_repository.dart';
import 'package:app/domain/usecases/get_projects.dart';
import 'package:app/presentation/pages/full_screen_image_viewer.dart';
import 'package:app/presentation/widgets/tag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDetail extends StatefulWidget {
  const AppDetail({super.key});

  @override
  State<AppDetail> createState() => _AppDetailState();
}

class _AppDetailState extends State<AppDetail> {
  late GetProfile getProfile;
  List<Project> projects = [];

  @override
  void initState() {
    _initialConfig();
    _loadData();
    super.initState();
  }

  void _initialConfig() {
    ProjectsRemoteDataSource dataSource = ProjectsRemoteDataSourceImpl();
    ProjectsRepository repository = ProjectsRepositoryImpl(dataSource);
    getProfile = GetProfile(repository);
  }

  void _loadData() async {
    projects = await getProfile.call();
    print(">>>>>>>>>>>>.projects: ${projects.length}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (Project project in projects) _app(project),

          /*
          Container(
            color: CupertinoColors.extraLightBackgroundGray,
            height: 800,
            child: const ProjectShowcase(projectId: 'growby_sf2'),
          ),*/
        ],
      ),
    );
  }

  Widget _app(Project project) {
    return Container(
      //color: CupertinoColors.lightBackgroundGray,
      color: CupertinoColors.lightBackgroundGray,
      margin: const EdgeInsets.all(32),
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          SizedBox(
            height: 800,
            child: ProjectShowcase(project: project),
          ),
          // detail hastacks and tech stack used in this project like dart flutter andorid ios
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (String tag in project.tags) Tag(text: tag),
            ],
          )
        ],
      ),
    );
  }
}

class ProjectShowcase extends StatelessWidget {
  final Project project;

  const ProjectShowcase({
    super.key,
    required this.project,
  });

/*
  final List<String> imagePaths = const [
    'assets/images/screen1.jpeg',
    'assets/images/screen2.jpeg',
    'assets/images/screen3.jpeg',
    'assets/images/screen4.jpeg',
  ];
  */

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _listScreenshots(context),
    );
  }

  // go to full screen image viewer
  void _navigateToFullScreenImageViewer(BuildContext myContext, int index) {
    Navigator.push(
      myContext,
      PageRouteBuilder(
        opaque: false,
        barrierColor: Colors.black.withOpacity(0.4),
        pageBuilder: (_, __, ___) => FullscreenImageViewer(
          imagePaths: project.screenshots,
          initialIndex: index,
        ),
      ),
    );
  }

// List screenshots
  Widget _listScreenshots(BuildContext myContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(project.screenshots.length, (index) {
          final image = project.screenshots[index];
          final isEven = index % 2 == 0;

          return Container(
            margin: EdgeInsets.only(
              left: 32,
              top: isEven ? 0 : 48,
              bottom: isEven ? 48 : 0,
            ),
            child: GestureDetector(
              onTap: () {
                _navigateToFullScreenImageViewer(myContext, index);
              },
              child: Hero(
                tag: 'image_${project.id}_$index',
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 18,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 800,
                        child: Image.asset(
                          'assets/images/iphone_frame.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
