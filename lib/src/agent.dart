import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

import 'model/common_model.dart';
import 'model/agent_req_model.dart';
import 'model/agent_res_model.dart';

part 'agent.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class Agent {
  factory Agent() => _Agent(
        DioClientForRetrofit().init(prettyLog: !PerfOneAIApi.pfDisableLog),
        baseUrl: PerfOneAIApi.pfApiEndpoint,
      );
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

  // @WS('/agent/checkStatusList')
  // Future<RspMessage> checkStatusList(@Body() ReqAgentDelete request);
}
