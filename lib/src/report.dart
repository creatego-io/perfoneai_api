import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'report.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class Report {
  factory Report() => _Report(
        DioClientForRetrofit().init(prettyLog: !pfDisableLog),
        baseUrl: pfApiEndpoint,
      );
}
