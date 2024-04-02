import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';
import 'model/agent_model.dart';

part 'user.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class User {
  factory User() => _User(
        DioClientForRetrofit().init(prettyLog: !pfDisableLog),
        baseUrl: pfApiEndpoint,
      );

  @POST('/user/login')
  Future<RspLogin> login(@Body() ReqLogin request);
}
