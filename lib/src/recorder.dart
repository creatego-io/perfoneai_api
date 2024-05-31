import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'recorder.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class _Recorder {
  //
  // @POST('/recorder/list') //check api
  // Future<RspServerList> list(@Body() ReqServerList request);

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
  Future<RspRecorderTransaction> addRdz(@Body() ReqRecorderAddRdz request);

  @POST('/recorder/getScriptList')
  Future<RspRecorderGetScriptList> getScriptList(
      @Body() ReqRecorderGetScriptList request);

  @POST('/recorder/loadScript')
  Future<RspRecorderTransaction> loadScript(
      @Body() ReqRecorderLoadScript request);

  @POST('/recorder/deleteScript')
  Future<RspMessage> deleteScript(@Body() ReqRecorderDeleteScript request);

  @POST('/recorder/saveScript')
  Future<RspMessage> saveScript(@Body() ReqRecorderSaveScript request);

  @POST('/recorder/getVerificationInfo')
  Future<RspRecorderGetVerificationInfo> getVerificationInfo(
      @Body() ReqRecorderGetVerificationInfo request);

  @POST('/recorder/tcp/getInterface')
  Future<RspRecorderInterface> getTcpInterface();

  @POST('/recorder/tcp/createTransaction')
  Future<RspMessage> createTcpTransaction(
      @Body() ReqRecorderCreateTransaction request);

  @POST('/recorder/tcp/startRecording')
  Future<RspMessage> startTcpRecording(
      @Body() ReqRecorderStartTcpRecording request);

  @POST('/recorder/tcp/pauseRecording')
  Future<RspMessage> pauseTcpRecording(
      @Body() ReqRecorderPauseRecording request);

  @POST('/recorder/tcp/stopRecording')
  Future<RspRecorderTransaction> stopTcpRecording(
      @Body() ReqRecorderStopRecording request);

  @POST('/recorder/autoCorrelation')
  Future<RspRecorderAutoCorrelation> autoCorrelation(
      @Body() ReqRecorderAutoCorrelation request);
}

class Recorder extends __Recorder with PerfWebSocket {
  factory Recorder() => Recorder._internal(
        DioClientForRetrofit(basicToken: PerfOneAIApi.basicToken)
            .init(prettyLog: !PerfOneAIApi.disableLog),
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

  Future<PerfWSConnection> verification() async {
    return connect('$baseUrl/verification');
  }
}
