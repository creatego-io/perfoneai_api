import 'package:json_annotation/json_annotation.dart';
import 'package:perfone_api/src/model/data_set.dart';

import 'common_model.dart';

part 'report_res_model.g.dart';

@JsonSerializable()
class RspReportList extends ResData {
  ReportListRes? resultData;

  RspReportList({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspReportList.fromJson(json) {
    RspReportList res = _$RspReportListFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspReportListToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = ReportListRes.fromJson(result!);
    }
  }
}

class ReportListRes {
  List<ReportModel?>? data;
  PageInfoModel? pageInfo;

  ReportListRes({
    required this.data,
    required this.pageInfo,
  });

  ReportListRes.fromJson(Map json)
      : data = json['data'] == null
            ? <ReportModel>[]
            : json['data']
                .map<ReportModel>((json) => ReportModel.fromJson(json))
                .toList(),
        pageInfo =
            PageInfoModel.fromJson(json['pageInfo'] ?? <String, dynamic>{});

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    List list = [];
    if (data != null) {
      for (ReportModel? item in data!) {
        list.add(item?.toJson());
      }
    }
    map['data'] = list;
    map['pageInfo'] = pageInfo!.toJson();

    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class RspReportInfo extends ResData {
  ReportInfoRes? resultData;

  RspReportInfo({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspReportInfo.fromJson(json) {
    RspReportInfo res = _$RspReportInfoFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspReportInfoToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = ReportInfoRes.fromJson(result!);
    }
  }
}

class ReportInfoRes {
  ReportModel? data;
  String? message;

  ReportInfoRes({
    required this.data,
    required this.message,
  });

  ReportInfoRes.fromJson(Map json)
      : data = ReportModel.fromJson(json['data'] ?? <String, dynamic>{}),
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['data'] = data!.toJson();
    map['message'] = message;
    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
