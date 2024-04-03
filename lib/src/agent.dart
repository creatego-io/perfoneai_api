import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'agent.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class _Agent {
  @POST('/agent/list')
  Future<RspAgentList> list(@Body() ReqAgentList request);

  @POST('/agent/create')
  Future<RspMessage> create(@Body() ReqAgentCreate request);

  @POST('/agent/info')
  Future<RspAgentInfo> info(@Body() ReqAgentInfo request);

  @POST('/agent/modify')
  Future<RspMessage> modify(@Body() ReqAgentModify request);

  @POST('/agent/delete')
  Future<RspMessage> delete(@Body() ReqAgentDelete request);
}

class Agent extends __Agent with PerfWebSocket {
  factory Agent() => Agent._internal(
        DioClientForRetrofit().init(prettyLog: !PerfOneAIApi.disableLog),
        baseUrl: PerfOneAIApi.apiEndpoint,
      );

  Agent._internal(Dio dio, {String? baseUrl}) : super(dio, baseUrl: baseUrl);

  Future<PerfWSConnection> checkStatusList() async {
    return connect('$baseUrl/agent/checkStatusList');
  }
}
