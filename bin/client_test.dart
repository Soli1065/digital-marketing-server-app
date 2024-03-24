import 'package:digital_marketing_server_app/src/generated/course.pbgrpc.dart';
import 'package:grpc/grpc.dart';

Future<void> main() async {
  // Create a gRPC channel to connect to the server
  final channel = ClientChannel('localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()));

  // Create a gRPC client for your service
  final client = GetCoursesServiceClient(channel);

  // Make a gRPC call to the SayHello method
  final response = await client.getCourses(
      GetCoursesRequest(),
      options: CallOptions(timeout: Duration(seconds: 30)));

  // Print the response from the server
  print('Response from server: ${response.courses.toString()}');

  // Close the gRPC channel
  await channel.shutdown();
}
