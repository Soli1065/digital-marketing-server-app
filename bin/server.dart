import 'dart:io';

import 'package:digital_marketing_server_app/src/generated/course.pbgrpc.dart';
import 'package:digital_marketing_server_app/src/generated/course.pb.dart';
// import 'package:shelf/shelf.dart';
// import 'package:shelf/shelf_io.dart';
// import 'package:shelf_router/shelf_router.dart';
import 'package:grpc/grpc.dart';

// // Configure routes.
// final _router = Router()
//   ..get('/', _rootHandler)
//   ..get('/echo/<message>', _echoHandler);
//
// Response _rootHandler(Request req) {
//   return Response.ok('Hello, World!\n');
// }
//
// Response _echoHandler(Request request) {
//   final message = request.params['message'];
//   return Response.ok('$message\n');
// }

void main(List<String> args) async {
  // // Use any available host or container IP (usually `0.0.0.0`).
  // final ip = InternetAddress.anyIPv4;
  //
  // // Configure a pipeline that logs requests.
  // final handler =
  //     Pipeline().addMiddleware(logRequests()).addHandler(_router.call);
  //
  // // For running in containers, we respect the PORT environment variable.
  // final port = int.parse(Platform.environment['PORT'] ?? '8080');
  // final server = await serve(handler, ip, port);
  // print('Server listening on port ${server.port}');


  final server = Server.create(services: [CourseService()]);
  final port = 50051;
  await server.serve(port: port);
  print('Server listening on port $port');
}


class CourseService extends MyServiceBase{

  @override
  Future<HelloResponse> sayHello(ServiceCall call, HelloRequest request) async {
    // Business logic goes here
    return HelloResponse()..message = 'Hello, ${request.name}!';
  }

}