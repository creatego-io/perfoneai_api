import 'package:json_annotation/json_annotation.dart';
import 'package:perfone_api/src/model/data_set.dart';

import 'common_model.dart';

part 'test_res_model.g.dart';

@JsonSerializable()
class RspTestLoadData extends ResData {
  RspTestLoadDataRes? resultData;

  RspTestLoadData({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspTestLoadData.fromJson(json) {
    RspTestLoadData res = _$RspTestLoadDataFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspTestLoadDataToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = RspTestLoadDataRes.fromJson(result!);
    }
  }
}

class RspTestLoadDataRes {
  TestLoadDataModel? json;
  String? message;

  RspTestLoadDataRes({
    required this.json,
    required this.message,
  });

  RspTestLoadDataRes.fromJson(Map json)
      : json = TestLoadDataModel.fromJson(json['json'] ?? <String, dynamic>{}),
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['json'] = json!.toJson();
    map['message'] = message;

    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}




@JsonSerializable()
class RspTestStartTest extends ResData {
  RspTestStartTestRes? resultData;

  RspTestStartTest({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspTestStartTest.fromJson(json) {
    RspTestStartTest res = _$RspTestStartTestFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspTestStartTestToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = RspTestStartTestRes.fromJson(result!);
    }
  }
}

class RspTestStartTestRes {
  String? result_file_name;
  String? message;

  RspTestStartTestRes({
    required this.result_file_name,
    required this.message,
  });

  RspTestStartTestRes.fromJson(Map json)
      : result_file_name = json['result_file_name'],
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['result_file_name'] = result_file_name;
    map['message'] = message;

    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}



