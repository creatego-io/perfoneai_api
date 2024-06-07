import 'package:json_annotation/json_annotation.dart';
import 'package:perfone_api/perfone_api.dart';
import 'package:perfone_api/src/model/data_set.dart';

part 'recorder_res_model.g.dart';

@JsonSerializable()
class RspRecorderGetProperty extends ResData {
  RspRecorderGetPropertyRes? resultData;

  RspRecorderGetProperty({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspRecorderGetProperty.fromJson(json) {
    RspRecorderGetProperty res = _$RspRecorderGetPropertyFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspRecorderGetPropertyToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = RspRecorderGetPropertyRes.fromJson(result!);
    }
  }
}

class RspRecorderGetPropertyRes {
  HttpRequestLineModel? httpRequestLine;
  HttpHeaderModel? httpHeader;
  HttpCookieModel? httpCookie;
  MessageBodyModel? messageBody;
  TcpInformationModel? tcpInformation;
  String? message;

  RspRecorderGetPropertyRes({
    this.httpRequestLine,
    this.httpHeader,
    this.httpCookie,
    this.messageBody,
    this.tcpInformation,
    this.message,
  });

  RspRecorderGetPropertyRes.fromJson(Map json)
      : httpRequestLine = json['httpRequestLine'] != null
            ? HttpRequestLineModel.fromJson(json['httpRequestLine'])
            : null,
        httpHeader = json['httpHeader'] != null
            ? HttpHeaderModel.fromJson(json['httpHeader'])
            : null,
        httpCookie = json['httpCookie'] != null
            ? HttpCookieModel.fromJson(json['httpCookie'])
            : null,
        messageBody = json['messageBody'] != null
            ? MessageBodyModel.fromJson(json['messageBody'])
            : null,
        tcpInformation = json['tcpInfomation'] != null
            ? TcpInformationModel.fromJson(json['tcpInfomation'])
            : null,
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['httpRequestLine'] = httpRequestLine?.toJson();
    map['httpHeader'] = httpHeader?.toJson();
    map['httpCookie'] = httpCookie?.toJson();
    map['messageBody'] = messageBody?.toJson();
    map['tcpInformation'] = tcpInformation?.toJson();
    map['message'] = message;
    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class HttpRequestLineModel {
  String? UrlPort;
  String? QueryString;
  String? UrlHost;
  String? Uri;
  String? HttpVersion;
  String? HttpMethod;

  HttpRequestLineModel({
    this.UrlPort,
    this.QueryString,
    this.UrlHost,
    this.Uri,
    this.HttpVersion,
    this.HttpMethod,
  });

  factory HttpRequestLineModel.fromJson(Map<String, dynamic> json) =>
      _$HttpRequestLineModelFromJson(json);

  Map<String, dynamic> toJson() => _$HttpRequestLineModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class HttpHeaderModel {
  String? PORT;
  String? Accept;
  @JsonKey(name: 'User-Transaction')
  String? UserTransaction;
  String? Referer;
  String? Connection;
  @JsonKey(name: 'Sec-Fetch-Dest')
  String? SecFetchDest;
  @JsonKey(name: 'Sec-Fetch-Site')
  String? SecFetchSite;
  String? Host;
  @JsonKey(name: 'Accept-Encoding')
  String? AcceptEncoding;
  String? Timestamp;
  @JsonKey(name: 'Sec-Fetch-Mode')
  String? SecFetchMode;
  String? Authorization;
  @JsonKey(name: 'Accept-Language')
  String? AcceptLanguage;

  HttpHeaderModel({
    this.PORT,
    this.Accept,
    this.UserTransaction,
    this.Referer,
    this.Connection,
    this.SecFetchDest,
    this.SecFetchSite,
    this.Host,
    this.AcceptEncoding,
    this.Timestamp,
    this.SecFetchMode,
    this.Authorization,
    this.AcceptLanguage,
  });

  factory HttpHeaderModel.fromJson(Map<String, dynamic> json) =>
      _$HttpHeaderModelFromJson(json);

  Map<String, dynamic> toJson() => _$HttpHeaderModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class HttpCookieModel {
  String? JSESSIONID;

  HttpCookieModel({
    this.JSESSIONID,
  });

  factory HttpCookieModel.fromJson(Map<String, dynamic> json) =>
      _$HttpCookieModelFromJson(json);

  Map<String, dynamic> toJson() => _$HttpCookieModelToJson(this);
}

@JsonSerializable()
class MessageBodyModel {
  String? PostData;

  MessageBodyModel({
    this.PostData,
  });

  factory MessageBodyModel.fromJson(Map<String, dynamic> json) =>
      _$MessageBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageBodyModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class TcpInformationModel {
  @JsonKey(name: 'PORT')
  String? port;
  @JsonKey(name: 'IP')
  String? ip;

  TcpInformationModel({this.port, this.ip});

  factory TcpInformationModel.fromJson(Map<String, dynamic> json) =>
      _$TcpInformationModelFromJson(json);

  Map<String, dynamic> toJson() => _$TcpInformationModelToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
class RspRecorderTransaction extends ResData {
  RspRecorderTransactionRes? resultData;

  RspRecorderTransaction({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspRecorderTransaction.fromJson(json) {
    RspRecorderTransaction res = _$RspRecorderTransactionFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspRecorderTransactionToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = RspRecorderTransactionRes.fromJson(result!);
    }
  }
}

class RspRecorderTransactionRes {
  TransactionModel? tree;
  String? xml;
  String? erl;
  String? message;

  RspRecorderTransactionRes({
    required this.tree,
    required this.xml,
    required this.erl,
    required this.message,
  });

  RspRecorderTransactionRes.fromJson(Map json)
      : tree = TransactionModel.fromJson(json['tree'] ?? <String, dynamic>{}),
        xml = json['xml'],
        erl = json['erl'],
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tree'] = tree!.toJson();
    map['xml'] = xml;
    map['erl'] = erl;
    map['message'] = message;
    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

class TransactionModel {
  String id;
  String name;
  List<TransactionModel?>? children;

  TransactionModel({
    required this.id,
    required this.name,
    required this.children,
  });

  TransactionModel.fromJson(Map json)
      : children = json['children'] == null
            ? <TransactionModel>[]
            : json['children']
                .map<TransactionModel>(
                    (json) => TransactionModel.fromJson(json))
                .toList(),
        id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    List list = [];
    if (children != null) {
      for (TransactionModel? item in children!) {
        list.add(item?.toJson());
      }
    }
    map['children'] = list;
    map['id'] = id;
    map['name'] = name;

    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class RspRecorderGetScriptList extends ResData {
  RecorderGetScriptListRes? resultData;

  RspRecorderGetScriptList({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspRecorderGetScriptList.fromJson(json) {
    RspRecorderGetScriptList res = _$RspRecorderGetScriptListFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspRecorderGetScriptListToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = RecorderGetScriptListRes.fromJson(result!);
    }
  }
}

class RecorderGetScriptListRes {
  List<ScriptModel?>? script_list;
  String? message;

  RecorderGetScriptListRes({
    required this.script_list,
    required this.message,
  });

  RecorderGetScriptListRes.fromJson(Map json)
      : script_list = json['script_list'] == null
            ? <ScriptModel>[]
            : json['script_list']
                .map<ScriptModel>((json) => ScriptModel.fromJson(json))
                .toList(),
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    List list = [];
    if (script_list != null) {
      for (ScriptModel? item in script_list!) {
        list.add(item?.toJson());
      }
    }
    map['script_list'] = script_list;
    map['message'] = message;

    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class ScriptModel {
  String? script_name;
  String? create_datetime;

  ScriptModel({
    this.script_name,
    this.create_datetime,
  });

  factory ScriptModel.fromJson(Map<String, dynamic> json) =>
      _$ScriptModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScriptModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class RspRecorderGetVerificationInfo extends ResData {
  RspRecorderGetVerificationInfoRes? resultData;

  RspRecorderGetVerificationInfo({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspRecorderGetVerificationInfo.fromJson(json) {
    RspRecorderGetVerificationInfo res =
        _$RspRecorderGetVerificationInfoFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspRecorderGetVerificationInfoToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = RspRecorderGetVerificationInfoRes.fromJson(result!);
    }
  }
}

class RspRecorderGetVerificationInfoRes {
  String? request;
  String? response;
  String? message;

  RspRecorderGetVerificationInfoRes({
    required this.request,
    required this.response,
    required this.message,
  });

  RspRecorderGetVerificationInfoRes.fromJson(Map json)
      : request = json['request'],
        response = json['response'],
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['request'] = request;
    map['response'] = response;
    map['message'] = message;
    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

class RspRecorderInterface extends ResData {
  List<String>? names;

  RspRecorderInterface({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  RspRecorderInterface.fromJson(Map<String, dynamic> json)
      : super.fromJson(json) {
    fromJsonResult();
  }

  @override
  fromJsonResult() {
    names = result?['interfaceList']
            .map<String>((i) => i['name'] as String)
            .toList() ??
        [];
  }
}

class RspRecorderAutoCorrelation extends ResData {
  String? xml;

  RspRecorderAutoCorrelation({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  RspRecorderAutoCorrelation.fromJson(Map<String, dynamic> json)
      : super.fromJson(json) {
    fromJsonResult();
  }

  @override
  fromJsonResult() {
    xml = result?['xml'];
  }
}
