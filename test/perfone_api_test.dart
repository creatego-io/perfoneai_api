import 'package:flutter_test/flutter_test.dart';
import 'package:perfone_api/perfone_api.dart';

void main() {
  setUp(() {
    PerfOneAIApi.useLocalhost = true;
  });

  group('User', () {
    test('login', () async {
      ResData rsp = await PerfOneAIApi.user.login(ReqUserLogin(
        userId: 'admin',
        password: 'admin',
      ));
      print("login : ${rsp.toJson()}");
    });
    test('duplicate', () async {
      ResData rsp = await PerfOneAIApi.user.duplicate(ReqUserDuplicate(
        userId: 'admin3',
      ));
      print("duplicate : ${rsp.toJson()}");
    });
  });

  group('Agent', () {
    //
  });

  group('Server', () {
    //
  });

  group('Recorder', () {
    //
  });

  group('Report', () {
    //
  });
}
