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
    test('checkStatusList', () async {
      PerfWSConnection con = await PerfOneAIApi.agent.checkStatusList();
      con.listen((data) {
        print('ids: ${data['ids']}');
      });
      await pause(3);
    });
  });

  group('Server', () {
    //
  });

  group('Recorder', () {
    test('echo', () async {
      PerfWSConnection con = await PerfOneAIApi.recorder.echo();
      con.send("First message");
      con.listen((msg) {
        print('<< $msg');
      });
      await pause(3);
    });

    test('recording', () async {
      PerfWSConnection con = await PerfOneAIApi.recorder.recording();
      con.listen((data) {
        print('id: ${data['websocketSessionId']}');
      });
      await pause(3);
    });
  });

  group('Report', () {
    //
  });
}

Future<void> pause(int second) async {
  await Future.delayed(const Duration(seconds: 3));
}
