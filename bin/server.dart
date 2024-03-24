import 'dart:io';

import 'package:digital_marketing_server_app/src/generated/course.pbgrpc.dart';
import 'package:digital_marketing_server_app/src/generated/course.pb.dart';
// import 'package:shelf/shelf.dart';
// import 'package:shelf/shelf_io.dart';
// import 'package:shelf_router/shelf_router.dart';
import 'package:grpc/grpc.dart';


void main(List<String> args) async {

  final server = Server.create(services: [CourseService()]);
  final port = 50051;
  await server.serve(port: port);
  print('Server listening on port $port');
}


class CourseService extends GetCoursesServiceBase{

  @override
  Future<GetCoursesResponse> getCourses(ServiceCall call, GetCoursesRequest request) async {
    return GetCoursesResponse(courses: [
      Course()
        ..id = 1
        ..title = 'Dart for Beginners'
        ..subtitle = 'Learn the fundamentals of Dart'
        ..description = 'This course will teach you the basics of Dart, a powerful and versatile programming language.'
        ..lessons.addAll([
          Lesson()
           ..id = 1
           ..title = 'Introduction'
           ..description = 'This lesson will teach you the fundamentals of Dart, a powerful and versatile programming language.'
           ..questions.addAll([
              Question()
               ..id = 1
               ..title = 'What is Dart?'
               ..options.addAll([
                 'option 1',
                 'option 2',
                 'option 3',
                 'option 4',
                ])
              ..correctOption = 'option 1',
             Question()
               ..id = 1
               ..title = 'What is Flutter?'
               ..options.addAll([
                 'option 1',
                 'option 2',
                 'option 3',
                 'option 4',
               ])
               ..correctOption = 'option 2',

           ])
          ,
          Lesson()
            ..id = 2
            ..title = 'Variables'
            ..description = 'This lesson will teach you the basics of Dart, a powerful and'
            ..questions.addAll([
              Question()
                ..id = 1
                ..title = 'What is Dart?'
                ..options.addAll([
                  'option 1',
                  'option 2',
                  'option 3',
                  'option 4',
                ])
                ..correctOption = 'option 1',
              Question()
                ..id = 1
                ..title = 'What is Flutter?'
                ..options.addAll([
                  'option 1',
                  'option 2',
                  'option 3',
                  'option 4',
                ])
                ..correctOption = 'option 2',

            ])

        ])
      ,
      Course()
        ..id = 2
        ..title = 'Flutter for Beginners'
        ..subtitle = 'Build beautiful mobile apps with Flutter'
        ..description = 'This course will teach you how to build beautiful and responsive mobile apps with Flutter, a powerful and flexible UI toolkit for building native iOS and Android apps.'
        ..lessons.addAll([
          Lesson()
            ..id = 1
            ..title = 'Flutter for Beginners'
            ..description = 'This lesson will teach you the fundamentals of Dart, a powerful and versatile programming language.'
            ..questions.addAll([
              Question()
                ..id = 1
                ..title = 'What is Dart?'
                ..options.addAll([
                  'option 1',
                  'option 2',
                  'option 3',
                  'option 4',
                ])
                ..correctOption = 'option 1',
              Question()
                ..id = 1
                ..title = 'What is Flutter?'
                ..options.addAll([
                  'option 1',
                  'option 2',
                  'option 3',
                  'option 4',
                ])
                ..correctOption = 'option 2',

            ])
          ,
          Lesson()
            ..id = 2
            ..title = 'Variables'
            ..description = 'This lesson will teach you the basics of Dart, a powerful and'
            ..questions.addAll([
              Question()
                ..id = 1
                ..title = 'What is Dart?'
                ..options.addAll([
                  'option 1',
                  'option 2',
                  'option 3',
                  'option 4',
                ])
                ..correctOption = 'option 1',
              Question()
                ..id = 1
                ..title = 'What is Flutter?'
                ..options.addAll([
                  'option 1',
                  'option 2',
                  'option 3',
                  'option 4',
                ])
                ..correctOption = 'option 2',

            ])

        ])
      ,
    ]);

  }

}