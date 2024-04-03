import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'tester.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class Tester {
  factory Tester() => _Tester(
        DioClientForRetrofit().init(prettyLog: !PerfOneAIApi.disableLog),
        baseUrl: PerfOneAIApi.apiEndpoint,
      );
}
