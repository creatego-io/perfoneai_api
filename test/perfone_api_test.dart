import 'package:flutter_test/flutter_test.dart';
import 'package:perfone_api/perfone_api.dart';
import 'package:perfone_api/src/model/data_set.dart';
import 'package:perfone_api/src/model/user_req_model.dart';
import 'package:perfone_api/src/model/user_res_model.dart';

void main() {
  setUp(() {
    PerfOneAIApi.pfUseLocalhost = true;
  });

  group('User', () {
    test('login', () async {
      ResData rsp = await User().login(ReqUserLogin(
        userId: 'admin',
        password: 'admin',
      ));
      print("login : ${rsp.toJson()}");
    });
    test('duplicate', () async {
      ResData rsp = await User().duplicate(ReqUserDuplicate(
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
