import 'package:json_annotation/json_annotation.dart';
import 'package:perfone_api/src/model/data_set.dart';

import 'common_model.dart';

part 'agent_res_model.g.dart';

@JsonSerializable()
class RspAgentList extends ResData {
  AgentListRes? resultData;

  RspAgentList({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspAgentList.fromJson(json) {
    RspAgentList res = _$RspAgentListFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspAgentListToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = AgentListRes.fromJson(result!);
    }
  }
}

class AgentListRes {
  List<AgentModel?>? data;
  PageInfoModel? pageInfo;

  AgentListRes({
    required this.data,
    required this.pageInfo,
  });

  AgentListRes.fromJson(Map json)
      : data = json['data'] == null
            ? <AgentModel>[]
            : json['data']
                .map<AgentModel>((json) => AgentModel.fromJson(json))
                .toList(),
        pageInfo =
            PageInfoModel.fromJson(json['pageInfo'] ?? <String, dynamic>{});

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    List list = [];
    if (data != null) {
      for (AgentModel? item in data!) {
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
class RspAgentInfo extends ResData {
  AgentInfoRes? resultData;

  RspAgentInfo({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspAgentInfo.fromJson(json) {
    RspAgentInfo res = _$RspAgentInfoFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspAgentInfoToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = AgentInfoRes.fromJson(result!);
    }
  }
}

class AgentInfoRes {
  AgentModel? data;
  String? message;

  AgentInfoRes({
    required this.data,
  });

  AgentInfoRes.fromJson(Map json)
      : data = AgentModel.fromJson(json['data'] ?? <String, dynamic>{}),
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
