import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'user.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class User {
  factory User() => _User(
        DioClientForRetrofit(basicToken: PerfOneAIApi.basicToken)
            .init(prettyLog: !PerfOneAIApi.disableLog),
        baseUrl: PerfOneAIApi.apiEndpoint,
      );

  @POST('/user/login')
  Future<RspUserInfo> login(@Body() ReqUserLogin request);

  @POST('/user/duplicate')
  Future<RspUserDuplicate> duplicate(@Body() ReqUserDuplicate request);

  @POST('/user/join')
  Future<RspMessage> join(@Body() ReqUserJoin request);

  @POST('/user/list')
  Future<RspUserList> list(@Body() ReqUserList request);

  @POST('/user/info')
  Future<RspUserInfo> info(@Body() ReqUserInfo request);

  @POST('/user/pwdModify')
  Future<RspMessage> pwdModify(@Body() ReqUserPwdModify request);

  @POST('/user/infoModify')
  Future<RspMessage> infoModify(@Body() ReqUserInfoModify request);

  @POST('/user/delete')
  Future<RspMessage> delete(@Body() ReqUserDelete request);

  @POST('/user/pwdReset')
  Future<RspMessage> pwdReset(@Body() ReqUserPwdReset request);
}
