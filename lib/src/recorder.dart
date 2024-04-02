import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'recorder.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class Recorder {
  factory Recorder() => _Recorder(
        DioClientForRetrofit().init(prettyLog: !pfDisableLog),
        baseUrl: pfApiEndpoint,
      );
}
