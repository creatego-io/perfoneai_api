import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

import 'model/common_model.dart';
import 'model/recorder_req_model.dart';
import 'model/recorder_res_model.dart';

part 'recorder.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class Recorder {
  factory Recorder() => _Recorder(
        DioClientForRetrofit().init(prettyLog: !PerfOneAIApi.pfDisableLog),
        baseUrl: PerfOneAIApi.pfApiEndpoint,
      );

  @POST('/recorder/getProperty')
  Future<RspRecorderGetProperty> getProperty(@Body() ReqRecorderGetProperty request);

  @POST('/recorder/createScript')
  Future<RspMessage> createScript(@Body() ReqRecorderCreateScript request);

  @POST('/recorder/createTransaction')
  Future<RspMessage> createTransaction(@Body() ReqRecorderCreateTransaction request);

  @POST('/recorder/startRecording')
  Future<RspMessage> startRecording(@Body() ReqRecorderStartRecording request);

  @POST('/recorder/pauseRecording')
  Future<RspMessage> pauseRecording(@Body() ReqRecorderPauseRecording request);

  @POST('/recorder/stopRecording')
  Future<RspRecorderTransaction> stopRecording(@Body() ReqRecorderStopRecording request);

  @POST('/recorder/deleteNode')
  Future<RspRecorderTransaction> deleteNode(@Body() ReqRecordeDeleteNode request);

  @POST('/recorder/addLoop')
  Future<RspRecorderTransaction> addLoop(@Body() ReqRecorderAddLoop request);

  @POST('/recorder/addThinkTime')
  Future<RspRecorderTransaction> addThinkTime(@Body() ReqRecorderAddThinkTime request);

  @POST('/recorder/addRdz')
  Future<RspRecorderTransaction> list(@Body() ReqRecorderAddRdz request);

  @POST('/recorder/loadScript')
  Future<RspRecorderTransaction> loadScript(@Body() ReqRecorderLoadScript request);

  @POST('/recorder/deleteScript')
  Future<RspMessage> deleteScript(@Body() ReqRecorderDeleteScript request);

  @POST('/recorder/saveScript')
  Future<RspMessage> saveScript(@Body() ReqRecorderSaveScript request);

// @WS('/recording')
  // Future<RspRecorderList> recording(@Body() ReqRecorderList request);


}
