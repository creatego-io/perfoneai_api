import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'server.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class Server {
  factory Server() => _Server(
        DioClientForRetrofit().init(prettyLog: !pfDisableLog),
        baseUrl: pfApiEndpoint,
      );
}
