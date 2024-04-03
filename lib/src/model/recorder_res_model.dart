import 'package:json_annotation/json_annotation.dart';
import 'package:perfone_api/src/model/data_set.dart';

part 'recorder_res_model.g.dart';

@JsonSerializable()
class RspRecorderGetProperty extends ResData {
  RspRecorderGetPropertyRes? resultData;

  RspRecorderGetProperty({
    required super.status,
    required super.message,
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
  String? message;

  RspRecorderGetPropertyRes({
    required this.httpRequestLine,
    required this.httpHeader,
    required this.httpCookie,
    required this.messageBody,
    required this.message,
  });

  RspRecorderGetPropertyRes.fromJson(Map json)
      : httpRequestLine = HttpRequestLineModel.fromJson(
            json['httpRequestLine'] ?? <String, dynamic>{}),
        httpHeader =
            HttpHeaderModel.fromJson(json['httpHeader'] ?? <String, dynamic>{}),
        httpCookie =
            HttpCookieModel.fromJson(json['httpCookie'] ?? <String, dynamic>{}),
        messageBody = MessageBodyModel.fromJson(
            json['messageBody'] ?? <String, dynamic>{}),
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['httpRequestLine'] = httpRequestLine!.toJson();
    map['httpHeader'] = httpHeader!.toJson();
    map['httpCookie'] = httpCookie!.toJson();
    map['messageBody'] = messageBody!.toJson();
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
  @JsonKey(name: 'Accept-Encoding')
  String? AcceptEncoding;
  String? Timestamp;
  @JsonKey(name: 'Sec-Fetch-Mode')
  String? SecFetchMode;
  String? Authorization;
  @JsonKey(name: 'Accept-Language')
  String? AcceptLanguage;

  HttpHeaderModel(
      {this.PORT,
      this.Accept,
      this.UserTransaction,
      this.Referer,
      this.Connection,
      this.SecFetchDest,
      this.SecFetchSite,
      this.AcceptEncoding,
      this.Timestamp,
      this.SecFetchMode,
      this.Authorization,
      this.AcceptLanguage});

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

class RspRecorderTransaction {
  RecordingTreeModel? tree;
  String? xml;
  String? erl;
  String? message;

  RspRecorderTransaction({
    required this.tree,
    required this.xml,
    required this.erl,
    required this.message,
  });

  RspRecorderTransaction.fromJson(Map json)
      : tree = RecordingTreeModel.fromJson(json['tree'] ?? <String, dynamic>{}),
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

class RecordingTreeModel {
  String id;
  String name;
  List<TransactionModel?>? children;

  RecordingTreeModel({
    required this.id,
    required this.name,
    required this.children,
  });

  RecordingTreeModel.fromJson(Map json)
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
