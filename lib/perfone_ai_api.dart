import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

import 'src/agent.dart';
import 'src/chatbot.dart';
import 'src/recorder.dart';
import 'src/report.dart';
import 'src/server.dart';
import 'src/test.dart';
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

  static Report get reportSilent => Report(disableLog: true);

  static Server get server => Server();

  static Test get test => Test();

  static Chatbot get chatbot => Chatbot();

  static Recorder get recorder => Recorder();
}

class PerfWSConnection {
  WebSocketChannel channel;
  bool json;

  PerfWSConnection(this.channel, {this.json = true});

  void send(dynamic data) {
    if (json) {
      data = jsonEncode(data);
    }

    if (!PerfOneAIApi.disableLog) {
      debugPrint('WS>> $data');
    }

    channel.sink.add(data);
  }

  void listen(void Function(dynamic) listener) {
    channel.stream.listen((data) {
      if (json) {
        try {
          data = jsonDecode(data);
        } catch (e) {
          debugPrint('WS Parsing Error<< $data');
          String text = data.toString();
          text= text.replaceAll('\"[', '[');
          text=text.replaceAll(']\"', ']');
          data = jsonDecode(text);
        }
      }

      if (!PerfOneAIApi.disableLog) {
        debugPrint('WS<< $data');
      }

      listener(data);
    });
  }

  void close([int code = status.normalClosure]) {
    channel.sink.close(code);

    if (!PerfOneAIApi.disableLog) {
      debugPrint('WS closed');
    }
  }
}
