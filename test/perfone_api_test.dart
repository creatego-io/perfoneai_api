import 'package:flutter_test/flutter_test.dart';
import 'package:perfone_api/perfone_api.dart';

void main() {
  group('User', () {
    test('User-login', () async {
      ResData rsp = await PerfOneAIApi.user.login(ReqUserLogin(
        userId: 'admin',
        password: 'admin',
      ));
      print("login : ${rsp.toJson()}");
      /*
      {status: 200, message: OK, result: {data: {user_id: admin, password: admin, name: 관리자, company: 그리드원, admin: FALSE, create_datetime: 2024-03-20 16:13:14, update_user_id: null, update_datetime: null}}, timestamp: null, error: null, path: null, resultData: {data: {user_id: admin, password: admin, name: 관리자, company: 그리드원, admin: FALSE, create_datetime: 2024-03-20 16:13:14, update_user_id: null, update_datetime: null}}}
       */
    });
    test('User-duplicate', () async {
      ResData rsp = await PerfOneAIApi.user.duplicate(ReqUserDuplicate(
        userId: 'admin',
      ));
      print("duplicate : ${rsp.toJson()}");
      /*
      {status: 200, message: OK, result: {is_duplicate: T, message: 이미 존재하는 아이디 입니다.}, timestamp: null, error: null, path: null, resultData: {is_duplicate: T, message: 이미 존재하는 아이디 입니다.}}
       */
    });

    test('User-list', () async {
      ResData rsp = await PerfOneAIApi.user.list(ReqUserList(
        rows: '10',
        page: '1',
        // name: '1',
        // startDate: '1',
        // endDate: '1',
      ));
      print("list : ${rsp.toJson()}");
      /*
      {status: 200, message: OK, result: {data: [{user_id: admin, password: admin, name: 관리자, company: 그리드원, admin: FALSE, create_datetime: 2024-03-20 16:13:14, update_user_id: null, update_datetime: null}], pageInfo: {page: 1, currentRows: 10, totalRows: 1}}, timestamp: null, error: null, path: null, resultData: Instance of 'UserListRes'}
       */
    });

    test('User-info', () async {
      ResData rsp = await PerfOneAIApi.user.info(ReqUserInfo(
        userId: 'admin',
      ));
      print("info : ${rsp.toJson()}");
      /*
      {status: 200, message: OK, result: {data: {user_id: admin, password: admin, name: 관리자, company: 그리드원, admin: FALSE, create_datetime: 2024-03-20 16:13:14, update_user_id: null, update_datetime: null}, message: 사용자 정보를 가져왔습니다.}, timestamp: null, error: null, path: null, resultData: {data: {user_id: admin, password: admin, name: 관리자, company: 그리드원, admin: FALSE, create_datetime: 2024-03-20 16:13:14, update_user_id: null, update_datetime: null}}}
       */
    });

    // test('join', () async {
    //   ResData rsp = await PerfOneAIApi.user.info(ReqUserJoin(
    //     userId: 'admin3',
    //   ));
    //   print("duplicate : ${rsp.toJson()}");
    // });

  });

  group('Agent', () {
    test('Agent-list', () async {
      ResData rsp = await PerfOneAIApi.agent.list(ReqAgentList(
        rows: '10',
        page: '1',
        // name: '1',
        // startDate: '1',
        // endDate: '1',
      ));
      print("list : ${rsp.toJson()}");
      /*
{status: 200, message: OK, result: {data: [{id: 1, name: agent01, ip: 127.0.0.1, port: null, status: , create_user_id: admin, create_user_name: 관리자, create_datetime: 2024-03-20 17:25:43, update_user_id: , update_datetime: null, agentFullName: agent01@127.0.0.1}], pageInfo: {page: 1, currentRows: 10, totalRows: 1}}, timestamp: null, error: null, path: null, resultData: {data: [], pageInfo: {page: 1, currentRows: 10, totalRows: 1}}}
       */
    });
    test('Agent-info', () async {
      ResData rsp = await PerfOneAIApi.agent.info(ReqAgentInfo(
        id: '1',
      ));
      print("info : ${rsp.toJson()}");
      /*
 {status: 200, message: OK, result: {data: {id: 1, name: agent01, ip: 127.0.0.1, port: null, status: BAD, create_user_id: admin, create_user_name: 관리자, create_datetime: 2024-03-20 17:25:43, update_user_id: , update_datetime: null, agentFullName: agent01@127.0.0.1}, message: 에이전트 정보를 가져왔습니다.}, timestamp: null, error: null, path: null, resultData: {data: {id: 1, name: agent01, ip: 127.0.0.1, status: BAD, create_user_id: admin, create_user_name: 관리자, create_datetime: 2024-03-20 17:25:43, update_user_id: , update_datetime: null}, message: 에이전트 정보를 가져왔습니다.}}
       */
    });

    test('Agent-modify', () async {
      ResData rsp = await PerfOneAIApi.agent.modify(ReqAgentModify(
        id: 100,
        name: '1',
        ip: '1',
        update_user_id: 'admin',
      ));
      print("modify : ${rsp.toJson()}");
      /*
{status: 400, message: 에이전트 정보가 존재하지 않습니다., result: null, timestamp: 1712145611811, error: Bad Request, path: /perfone/v1/agent/modify, resultData: null}
       */
    });

    test('Agent-delete', () async {
      ResData rsp = await PerfOneAIApi.agent.delete(ReqAgentDelete(
        id: '333',
      ));
      print("delete : ${rsp.toJson()}");
      /*
{status: 400, message: 에이전트 정보가 존재하지 않습니다., result: null, timestamp: 1712145635092, error: Bad Request, path: /perfone/v1/agent/delete, resultData: null}
       */
    });
    test('checkStatusList', () async {
      PerfWSConnection con = await PerfOneAIApi.agent.checkStatusList();
      con.listen((data) {
        print('ids: ${data['ids']}');
      });
      await pause(3);
    });
    test('checkStatusList', () async {
      PerfWSConnection con = await PerfOneAIApi.agent.checkStatusList();
      con.listen((data) {
        print('ids: ${data['ids']}');
      });
      await pause(3);
    });
  });

  group('Server', () {
    test('Server-list', () async {
      ResData rsp = await PerfOneAIApi.server.list(ReqServerList(
        rows: '10',
        page: '1',
        // name: '1',
        // startDate: '1',
        // endDate: '1',
      ));
      print("list : ${rsp.toJson()}");
      /*
{status: 200, message: OK, result: {data: [{id: 1, name: test_server, os: windows, connect_type: SSH, ip: 192.168.0.109, port: 22, connect_id: user, connect_pwd: user, type: WEB, description: API 서버, create_user_id: admin, create_user_name: 관리자, create_datetime: 2024-03-20 17:25:04, update_user_id: null, update_datetime: null}], pageInfo: {page: 1, currentRows: 10, totalRows: 1}}, timestamp: null, error: null, path: null, resultData: {data: [], pageInfo: {page: 1, currentRows: 10, totalRows: 1}}}
       */
    });
    test('Server-info', () async {
      ResData rsp = await PerfOneAIApi.server.info(ReqServerInfo(
        id: 1,
      ));
      print("info : ${rsp.toJson()}");
      /*
{status: 200, message: OK, result: {data: {id: 1, name: test_server, os: windows, connect_type: SSH, ip: 192.168.0.109, port: 22, connect_id: user, connect_pwd: user, type: WEB, description: API 서버, create_user_id: admin, create_user_name: 관리자, create_datetime: 2024-03-20 17:25:04, update_user_id: null, update_datetime: null}, message: 서버 정보를 가져왔습니다.}, timestamp: null, error: null, path: null, resultData: {data: {id: 1, name: test_server, os: windows, connect_type: SSH, ip: 192.168.0.109, port: 22, connect_id: user, connect_pwd: user, type: WEB, description: API 서버, create_user_id: admin, create_user_name: 관리자, create_datetime: 2024-03-20 17:25:04, update_user_id: null, update_datetime: null}, message: 서버 정보를 가져왔습니다.}}
       */
    });

    test('Server-modify', () async {
      ResData rsp = await PerfOneAIApi.server.modify(ReqServerModify(
        id: 100,
        name: '1',
        ip: '1',
        update_user_id: 'admin',
      ));
      print("modify : ${rsp.toJson()}");
      /*
 {status: 400, message: 서버 정보가 존재하지 않습니다., result: null, timestamp: 1712145798751, error: Bad Request, path: /perfone/v1/server/modify, resultData: null}
       */
    });

    test('Server-delete', () async {
      ResData rsp = await PerfOneAIApi.server.delete(ReqServerDelete(
        id: 333,
      ));
      print("delete : ${rsp.toJson()}");
      /*
{status: 400, message: 서버 정보가 존재하지 않습니다., result: null, timestamp: 1712145810898, error: Bad Request, path: /perfone/v1/server/delete, resultData: null}
       */
    });
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
    test('Recorder-list', () async {
      RspRecorderGetScriptList rsp = await PerfOneAIApi.recorder.getScriptList(ReqRecorderGetScriptList(
      ));
      print("list : ${rsp.toJson()}");
      /*
 {status: 404, message: null, result: null, timestamp: 1712146350638, error: Not Found, path: /perfone/v1/recorder/list, resultData: null}
       */
    });
  });

  group('Report', () {
    test('Report-list', () async {
      ResData rsp = await PerfOneAIApi.report.list(ReqReportList(
        rows: '10',
        page: '1',
        // name: '1',
        // startDate: '1',
        // endDate: '1',
      ));
      print("list : ${rsp.toJson()}");
      /*
 {status: 200, message: OK, result: {data: [], pageInfo: {page: 1, currentRows: 10, totalRows: 0}}, timestamp: null, error: null, path: null, resultData: {data: [], pageInfo: {page: 1, currentRows: 10, totalRows: 0}}}

       */
    });
    test('Report-download', () async {
      ResData rsp = await PerfOneAIApi.report.download(ReqReportDownload(
        id: 1,
      ));
      print("download : ${rsp.toJson()}");
      /*
 {status: 400, message: 보고서 정보가 존재하지 않습니다., result: null, timestamp: 1712146509867, error: Bad Request, path: /perfone/v1/report/download, resultData: null}
       */
    });

    test('Report-delete', () async {
      ResData rsp = await PerfOneAIApi.report.delete(ReqReportDelete(
        id: 100,
      ));
      print("delete : ${rsp.toJson()}");
      /*
{status: 400, message: 보고서 정보가 존재하지 않습니다., result: null, timestamp: 1712146522904, error: Bad Request, path: /perfone/v1/report/delete, resultData: null}
       */
    });

  });
}

Future<void> pause(int second) async {
  await Future.delayed(const Duration(seconds: 3));
}
