import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'server.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class Server {
  factory Server() => _Server(
        DioClientForRetrofit(basicToken: PerfOneAIApi.basicToken)
            .init(prettyLog: !PerfOneAIApi.disableLog),
        baseUrl: PerfOneAIApi.apiEndpoint,
      );

  @POST('/server/list')
  Future<RspServerList> list(@Body() ReqServerList request);

  @POST('/server/create')
  Future<RspMessage> create(@Body() ReqServerCreate request);

  @POST('/server/info')
  Future<RspServerInfo> info(@Body() ReqServerInfo request);

  @POST('/server/modify')
  Future<RspMessage> modify(@Body() ReqServerModify request);

  @POST('/server/delete')
  Future<RspMessage> delete(@Body() ReqServerDelete request);
}
