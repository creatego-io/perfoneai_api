import 'package:flutter_test/flutter_test.dart';
import 'package:perfone_api/perfone_api.dart';
import 'package:perfone_api/src/model/agent_model.dart';

void main() {
  setUp(() {
    PerfOneAIApi.pfUseLocalhost = true;
  });

  group('Agent', () {
    test('login', () async {
      RspLogin rsp = await User().login(ReqLogin(
        userId: 'admin',
        password: 'admin',
      ));
      print(rsp.toJson());
    });
  });

  group('Recorder', () {
    //
  });

  group('Report', () {
    //
  });

  group('Server', () {
    //
  });

  group('Tester', () {
    //
  });

  group('User', () {
    //
  });
}
