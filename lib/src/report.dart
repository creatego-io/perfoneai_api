import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../perfone_api.dart';
import 'dio_client_for_retrofit.dart';

part 'report.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class _Report {
  @POST('/report/list')
  Future<RspReportList> list(@Body() ReqReportList request);

  @POST('/report/download')
  @DioResponseType(ResponseType.bytes)
  Future<HttpResponse<List<int>>> downloadInternal(
      @Body() ReqReportDownload request);

  @POST('/report/delete')
  Future<RspMessage> delete(@Body() ReqReportDelete request);
}

class Report extends __Report {
  factory Report({bool? disableLog}) => Report._internal(
        DioClientForRetrofit(basicToken: PerfOneAIApi.basicToken)
            .init(prettyLog: !(disableLog ?? PerfOneAIApi.disableLog)),
        baseUrl: PerfOneAIApi.apiEndpoint,
      );

  Report._internal(Dio dio, {String? baseUrl}) : super(dio, baseUrl: baseUrl);

  Future<RspReportDownload> download(ReqReportDownload request) async {

    HttpResponse<List<int>> rsp = await downloadInternal(request);

    if (rsp.response.statusCode != 200) {
      return RspReportDownload.fromJson(jsonDecode(utf8.decode(rsp.data)));
    }

    List<String>? disposition = rsp.response.headers['content-disposition'];
    String? filename;

    if (disposition != null && disposition.isNotEmpty) {
      filename = RegExp(r'filename=(.*)').firstMatch(disposition[0])?.group(1);
    }

    return RspReportDownload(
      status: rsp.response.statusCode,
      message: 'Downloaded',
      filename: filename,
      content: rsp.data,
    );
  }
}
