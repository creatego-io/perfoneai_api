abstract class ResData {
  int status;
  String message;
  Map? result;
  num? timestamp;
  String? error;
  String? path;

  @override
  ResData({
    required this.status,
    required this.message,
    this.result,
    this.timestamp,
    this.error,
    this.path,
  });

  ResData.fromJson(Map json)
      : status = json['status'] ?? "500",
        message = json['message'] ?? "",
        result = json['result'],
        timestamp = json['timestamp'],
        error = json['error'],
        path = json['path'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['result'] = result;
    map['timestamp'] = timestamp;
    map['error'] = error;
    map['path'] = path;
    return map;
  }

  bool get isSuccess => status != 200;

  fromJsonResult();
}
