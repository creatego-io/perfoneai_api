import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'agent.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class Agent {
  factory Agent() => _Agent(
        DioClientForRetrofit().init(prettyLog: !pfDisableLog),
        baseUrl: pfApiEndpoint,
      );
}
