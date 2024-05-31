import 'package:json_annotation/json_annotation.dart';

part 'recorder_req_model.g.dart';

@JsonSerializable()
class ReqRecorderGetProperty {
  final String? target_id;
  final String? xml;

  ReqRecorderGetProperty({this.target_id, this.xml});

  Map<String, dynamic> toJson() => _$ReqRecorderGetPropertyToJson(this);
}

@JsonSerializable()
class ReqRecorderList {
  final String? rows;
  final String? page;
  final String? name;
  final String? ip;
  @JsonKey(name: 'start_date')
  final String? startDate;
  @JsonKey(name: 'end_date')
  final String? endDate;

  ReqRecorderList(
      {this.rows, this.page, this.name, this.ip, this.startDate, this.endDate});

  Map<String, dynamic> toJson() => _$ReqRecorderListToJson(this);
}

@JsonSerializable()
class ReqRecorderCreateScript {
  final String? script_name;

  ReqRecorderCreateScript({
    this.script_name,
  });

  Map<String, dynamic> toJson() => _$ReqRecorderCreateScriptToJson(this);
}

@JsonSerializable()
class ReqRecorderCreateTransaction {
  final String? script_name;
  final String? transaction_name;
  final int? num;

  ReqRecorderCreateTransaction({
    this.script_name,
    this.transaction_name,
    this.num,
  });

  Map<String, dynamic> toJson() => _$ReqRecorderCreateTransactionToJson(this);
}

@JsonSerializable()
class ReqRecorderStartRecording {
  final String? script_name;
  final String? transaction_name;
  final int? num;
  final bool? is_static_file;
  final String? websocket_session_id;

  ReqRecorderStartRecording({
    this.script_name,
    this.transaction_name,
    this.num,
    this.is_static_file,
    this.websocket_session_id,
  });

  Map<String, dynamic> toJson() => _$ReqRecorderStartRecordingToJson(this);
}

@JsonSerializable()
class ReqRecorderPauseRecording {
  final String? script_name;

  ReqRecorderPauseRecording({this.script_name});

  Map<String, dynamic> toJson() => _$ReqRecorderPauseRecordingToJson(this);
}

@JsonSerializable()
class ReqRecorderStopRecording {
  final String? script_name;

  ReqRecorderStopRecording({this.script_name});

  Map<String, dynamic> toJson() => _$ReqRecorderStopRecordingToJson(this);
}

@JsonSerializable()
class ReqRecordeDeleteNode {
  final String? script_name;
  final String? node_ids;
  final String? xml;

  ReqRecordeDeleteNode({this.script_name, this.node_ids, this.xml});

  Map<String, dynamic> toJson() => _$ReqRecordeDeleteNodeToJson(this);
}

@JsonSerializable()
class ReqRecorderAddLoop {
  final String? target_id;
  final String? loop_name;
  final String? loop_value;
  final String? xml;

  ReqRecorderAddLoop(
      {this.target_id, this.loop_name, this.loop_value, this.xml});

  Map<String, dynamic> toJson() => _$ReqRecorderAddLoopToJson(this);
}

@JsonSerializable()
class ReqRecorderAddThinkTime {
  final String? transaction_id;
  final String? think_time;
  final String? xml;

  ReqRecorderAddThinkTime({this.transaction_id, this.think_time, this.xml});

  Map<String, dynamic> toJson() => _$ReqRecorderAddThinkTimeToJson(this);
}

@JsonSerializable()
class ReqRecorderAddRdz {
  final String? script_name;
  final String? transaction_id;
  final String? rdz_name;
  final String? vuser;
  final String? timeout;
  final String? xml;

  ReqRecorderAddRdz(
      {this.script_name,
      this.transaction_id,
      this.rdz_name,
      this.vuser,
      this.timeout,
      this.xml});

  Map<String, dynamic> toJson() => _$ReqRecorderAddRdzToJson(this);
}

@JsonSerializable()
class ReqRecorderLoadScript {
  final String? script_name;

  ReqRecorderLoadScript({
    this.script_name,
  });

  Map<String, dynamic> toJson() => _$ReqRecorderLoadScriptToJson(this);
}

@JsonSerializable()
class ReqRecorderDeleteScript {
  final String? script_name;

  ReqRecorderDeleteScript({
    this.script_name,
  });

  Map<String, dynamic> toJson() => _$ReqRecorderDeleteScriptToJson(this);
}

@JsonSerializable()
class ReqRecorderSaveScript {
  final String? script_name;
  final String? xml;

  ReqRecorderSaveScript({
    this.script_name,
    this.xml,
  });

  Map<String, dynamic> toJson() => _$ReqRecorderSaveScriptToJson(this);
}

@JsonSerializable()
class ReqRecorderGetScriptList {
  // final String? script_name;

  ReqRecorderGetScriptList(// {
      // this.script_name,
      // }
      );

  Map<String, dynamic> toJson() => _$ReqRecorderGetScriptListToJson(this);
}

@JsonSerializable()
class ReqRecorderGetVerificationInfo {
  final String? script_name;
  final String? target_id;

  ReqRecorderGetVerificationInfo({
    this.script_name,
    this.target_id,
  });

  Map<String, dynamic> toJson() => _$ReqRecorderGetVerificationInfoToJson(this);
}

@JsonSerializable()
class ReqRecorderStartTcpRecording {
  final String? script_name;
  final String? transaction_name;
  final int? num;
  final String? ip;
  final int? port;
  final String? interface_name;
  final String? websocket_session_id;

  ReqRecorderStartTcpRecording({
    this.script_name,
    this.transaction_name,
    this.num,
    this.ip,
    this.port,
    this.interface_name,
    this.websocket_session_id,
  });

  Map<String, dynamic> toJson() => _$ReqRecorderStartTcpRecordingToJson(this);
}

@JsonSerializable()
class ReqRecorderAutoCorrelation {
  final String? xml;

  ReqRecorderAutoCorrelation({this.xml});

  Map<String, dynamic> toJson() => _$ReqRecorderAutoCorrelationToJson(this);
}
