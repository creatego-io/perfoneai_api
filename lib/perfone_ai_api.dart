import 'package:perfone_api/src/agent.dart';
import 'package:perfone_api/src/report.dart';
import 'package:perfone_api/src/server.dart';
import 'package:perfone_api/src/tester.dart';
import 'package:perfone_api/src/user.dart';

class PerfOneAIApi {
  static bool disableLog = false;
  static bool useLocalhost = false;

  static String get apiEndpoint => useLocalhost
      ? 'http://localhost:29100/perfone/v1'
      : 'http://godj.iptime.org:29100/perfone/v1';

  /// direct call classes
  static get user => User();

  static get agent => Agent();

  static get report => Report();

  static get server => Server();

  static get tester => Tester();
}
