import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'chatbot.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class _Chatbot {
  //
  // @POST('/chatbot/list') //check api
  // Future<RspServerList> list(@Body() ReqServerList request);
}

class Chatbot extends __Chatbot with PerfWebSocket {
  factory Chatbot() => Chatbot._internal(
        DioClientForRetrofit(basicToken: PerfOneAIApi.basicToken)
            .init(prettyLog: !PerfOneAIApi.disableLog),
        baseUrl: PerfOneAIApi.apiEndpoint,
      );

  Chatbot._internal(Dio dio, {String? baseUrl}) : super(dio, baseUrl: baseUrl);

  /// websocket 테스트
  Future<PerfWSConnection> echo() async {
    return connect('wss://echo.websocket.org/', json: false);
  }

  Future<PerfWSConnection> chatbot() async {
    return connect('$baseUrl/chatbot');
  }
}
