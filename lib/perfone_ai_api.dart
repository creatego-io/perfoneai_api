

import 'package:perfone_api/perfone_api.dart';

class PerfOneAIApi  {
  static bool pfDisableLog = false;
  static bool pfUseLocalhost = false;

  static String get pfApiEndpoint => pfUseLocalhost
      ? 'http://localhost:29100/perfone/v1'
      : 'http://godj.iptime.org:29100/perfone/v1';

  /// direct call classes
  static get user => User();

  static get agent => Agent();

  static get report => Report();

  static get server => Server();

  static get tester => Tester();
}