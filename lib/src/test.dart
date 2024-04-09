import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'test.g.dart';

@RestApi(parser: Parser.JsonSerializable)


@RestApi(parser: Parser.JsonSerializable)
abstract class _Test {
  //
  // @POST('/recorder/list') //check api
  // Future<RspServerList> list(@Body() ReqServerList request);

  @POST('/test/loadData')
  Future<RspTestLoadData> loadData(@Body() ReqTestLoadData request);
  @POST('/test/startTest')
  Future<RspTestStartTest> startTest(@Body() ReqTestStartTest request);
  @POST('/test/testStop')
  Future<RspMessage> testStop(@Body() ReqTestTestStop request);
  @POST('/test/genReport')
  Future<RspMessage> genReport(@Body() ReqTestGenReport request);
}

class Test extends __Test with PerfWebSocket {
  factory Test() => Test._internal(
    DioClientForRetrofit(basicToken: PerfOneAIApi.basicToken)
        .init(prettyLog: !PerfOneAIApi.disableLog),
    baseUrl: PerfOneAIApi.apiEndpoint,
  );

  Test._internal(Dio dio, {String? baseUrl}) : super(dio, baseUrl: baseUrl);

  /// websocket 테스트
  Future<PerfWSConnection> echo() async {
    return connect('wss://echo.websocket.org/', json: false);
  }

  Future<PerfWSConnection> testData() async {
    return connect('$baseUrl/testData');
  }
}
