import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

import 'src/agent.dart';
import 'src/recorder.dart';
import 'src/report.dart';
import 'src/server.dart';
import 'src/tester.dart';
import 'src/user.dart';

class PerfOneAIApi {
  static bool disableLog = false;

  static String apiEndpoint = 'https://perfone-api.yoshop.net/perfone/v1';

  static String language = 'ko'; // 또는 en

  static String basicToken = 'YXBpOmp1RHNRbUdyZktoM2Z5dzVwVE02';

  /// direct call classes
  static User get user => User();

  static Agent get agent => Agent();

  static Report get report => Report();

  static Server get server => Server();

  static Tester get tester => Tester();

  static Recorder get recorder => Recorder();
}

class PerfWSConnection {
  WebSocketChannel channel;
  bool json;

  PerfWSConnection(this.channel, {this.json = true});

  void send(dynamic data) {
    if (json) {
      data = jsonEncode(json);
    }

    channel.sink.add(data);
  }

  void listen(void Function(dynamic) listener) {
    channel.stream.listen((data) {
      if (json) {
        data = jsonDecode(data);
      }

      listener(data);
    });
  }
}
