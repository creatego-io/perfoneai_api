import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'recorder.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class _Recorder {
  @POST('/recorder/getProperty')
  Future<RspRecorderGetProperty> getProperty(
      @Body() ReqRecorderGetProperty request);

  @POST('/recorder/createScript')
  Future<RspMessage> createScript(@Body() ReqRecorderCreateScript request);

  @POST('/recorder/createTransaction')
  Future<RspMessage> createTransaction(
      @Body() ReqRecorderCreateTransaction request);

  @POST('/recorder/startRecording')
  Future<RspMessage> startRecording(@Body() ReqRecorderStartRecording request);

  @POST('/recorder/pauseRecording')
  Future<RspMessage> pauseRecording(@Body() ReqRecorderPauseRecording request);

  @POST('/recorder/stopRecording')
  Future<RspRecorderTransaction> stopRecording(
      @Body() ReqRecorderStopRecording request);

  @POST('/recorder/deleteNode')
  Future<RspRecorderTransaction> deleteNode(
      @Body() ReqRecordeDeleteNode request);

  @POST('/recorder/addLoop')
  Future<RspRecorderTransaction> addLoop(@Body() ReqRecorderAddLoop request);

  @POST('/recorder/addThinkTime')
  Future<RspRecorderTransaction> addThinkTime(
      @Body() ReqRecorderAddThinkTime request);

  @POST('/recorder/addRdz')
  Future<RspRecorderTransaction> list(@Body() ReqRecorderAddRdz request);

  @POST('/recorder/loadScript')
  Future<RspRecorderTransaction> loadScript(
      @Body() ReqRecorderLoadScript request);

  @POST('/recorder/deleteScript')
  Future<RspMessage> deleteScript(@Body() ReqRecorderDeleteScript request);

  @POST('/recorder/saveScript')
  Future<RspMessage> saveScript(@Body() ReqRecorderSaveScript request);
}

class Recorder extends __Recorder with PerfWebSocket {
  factory Recorder() => Recorder._internal(
        DioClientForRetrofit().init(prettyLog: !PerfOneAIApi.disableLog),
        baseUrl: PerfOneAIApi.apiEndpoint,
      );

  Recorder._internal(Dio dio, {String? baseUrl}) : super(dio, baseUrl: baseUrl);

  /// websocket 테스트
  Future<PerfWSConnection> echo() async {
    return connect('wss://echo.websocket.org/', json: false);
  }

  Future<PerfWSConnection> recording() async {
    return connect('$baseUrl/recording');
  }
}
