import 'package:json_annotation/json_annotation.dart';
import 'package:perfone_api/src/model/common_model.dart';

part 'test_req_model.g.dart';

@JsonSerializable()
class ReqTestLoadData {
  @JsonKey(name: 'user_id')
  final String? userId;

  ReqTestLoadData({this.userId});

  Map<String, dynamic> toJson() => _$ReqTestLoadDataToJson(this);
}

@JsonSerializable()
class ReqTestStartTest {
  @JsonKey(name: 'user_id')
  final String? userId;
  final String? websocket_session_id;
  final String? scenario_name;
  final TestLoadDataModel? conditions;
  // final ConditionModel? conditions;
  final List<ScenarioItemModel>? scenario_items;
  final List<TestServerModel>? server_list;


  ReqTestStartTest({this.userId, this.websocket_session_id, this.scenario_name,
      this.conditions, this.scenario_items, this.server_list});

  Map<String, dynamic> toJson() => _$ReqTestStartTestToJson(this);
}
//
// @JsonSerializable()
// class ConditionModel {
//
//   "testType": "DURATION",
//   "testValue": 10,
//   "userIncreaseType": "Variable",
//   "startUser": 1,
//   "endUser": 5,
//   "rampUpUser": 1,
//   "rampUpTerm": 1,
//   "rampDownUser": 0,
//   "rampDownTerm": 0,
//   "monitoringCount": 1,
//   "resultRate": 1,
//   "timeout": 60
//   String? testType;
//   String? currentRows;
//   String? totalRows;
//
//   ConditionModel({this.page, this.currentRows, this.totalRows});
//
//   factory ConditionModel.fromJson(Map<String, dynamic> json) =>
//       _$ConditionModelFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ConditionModelToJson(this);
//
//   @override
//   String toString() {
//     return toJson().toString();
//   }
// }

@JsonSerializable()
class ScenarioItemModel {
  String? script_name;
  String? agent_name;
  String? agent_ip;

  ScenarioItemModel({this.script_name, this.agent_name, this.agent_ip});

  factory ScenarioItemModel.fromJson(Map<String, dynamic> json) =>
      _$ScenarioItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScenarioItemModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class TestServerModel {
  String? id;

  TestServerModel({this.id});

  factory TestServerModel.fromJson(Map<String, dynamic> json) =>
      _$TestServerModelFromJson(json);

  Map<String, dynamic> toJson() => _$TestServerModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}



@JsonSerializable()
class ReqTestTestStop {
  final String? result_file_name;
  final List<TestAgentModel>? agent_list;


  ReqTestTestStop({this.result_file_name, this.agent_list});

  Map<String, dynamic> toJson() => _$ReqTestTestStopToJson(this);
}

@JsonSerializable()
class TestAgentModel {
  String? agent_name;
  String? agent_ip;

  TestAgentModel({this.agent_name, this.agent_ip});

  factory TestAgentModel.fromJson(Map<String, dynamic> json) =>
      _$TestAgentModelFromJson(json);

  Map<String, dynamic> toJson() => _$TestAgentModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}


@JsonSerializable()
class ReqTestGenReport {
  final String? result_file_name;
  final List<TestAgentModel>? agent_list;


  ReqTestGenReport({this.result_file_name, this.agent_list});

  Map<String, dynamic> toJson() => _$ReqTestGenReportToJson(this);
}