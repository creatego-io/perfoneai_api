import 'package:json_annotation/json_annotation.dart';

part 'report_req_model.g.dart';

@JsonSerializable()
class ReqReportList {
  final String? rows;
  final String? page;
  final String? name;
  @JsonKey(name: 'start_date')
  final String? startDate;
  @JsonKey(name: 'end_date')
  final String? endDate;

  ReqReportList(
      {this.rows, this.page, this.name, this.startDate, this.endDate});

  Map<String, dynamic> toJson() => _$ReqReportListToJson(this);
}

@JsonSerializable()
class ReqReportDownload {
  final int? id;

  ReqReportDownload({this.id});

  Map<String, dynamic> toJson() => _$ReqReportDownloadToJson(this);
}

@JsonSerializable()
class ReqReportDelete {
  final int? id;

  ReqReportDelete({this.id});

  Map<String, dynamic> toJson() => _$ReqReportDeleteToJson(this);
}
