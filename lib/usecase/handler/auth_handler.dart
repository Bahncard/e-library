import 'package:elibrary/domain/util_model/res_info.dart';
import 'package:elibrary/init_affairs.dart';
import 'package:elibrary/presentation/helper/toast_helper.dart';
import 'package:elibrary/usecase/nav/navigation_helper.dart';
import 'package:get_it/get_it.dart';

import '../../constant/rescode.dart';
import '../../domain/entity/user.dart';
import '../../respository/interface/state_repo.dart';
import '../../state_management/prov/user_prov.dart';
import '../../state_management/prov_manager.dart';
import '../requester/interface/auth_requester.dart';

import 'package:elibrary/domain/util_model/notification.dart';
import 'package:elibrary/constant/situation_enum.dart';

typedef VoidCallback = void Function();

class AuthHandler {
  static AuthReq authReq = GetIt.I.get<AuthReq>();
  static StateRep stateRep = GetIt.I.get<StateRep>();
  static UserProv userProv = ProvManager.userProv;

  static _ifLogInSuccess(User user) {
    userProv.setUser(user);
    stateRep.saveUser(user);
    stateRep.setDefaultUser(user);
    wsInit(); // 前置依赖: User设置好，这里是userProv.setUser(user);
  }

  static Future<void> logInWithPwd(
      {required String email, required String password}) async {
    Result<User> res = await authReq.loginWithEmailPwd(email, password);
    if (res.resCode == ResCode.SUCCESS) {
      // 设置用户状态当前
      _ifLogInSuccess(res.data!);
      // 清空路由，到达主页
      NavigationHelper.popAllAndMainPage();
    } else {
      // 弹出错误信息
      final notification = ResCode.getCorNotification(res.resCode);
      ToastHelper.showToaster(notification);
    }
  }

  static Future<void> logInWithEmailCode(
      {required String email, required String emailCode}) async {
    final res = await authReq.loginWithEmailCode(email, emailCode);
    if (res.resCode == ResCode.SUCCESS) {
      // 设置用户状态
      _ifLogInSuccess(res.data!);
      // 清空路由，到达主页
      NavigationHelper.popAllAndMainPage();
    }
    else if (res.resCode == ResCode.USER_PWD_UNSET) {
      // 设置用户状态
      _ifLogInSuccess(res.data!);
      // 跳转到设置密码页面
      NavigationHelper.popAllAndFirstSetPwd();
    } else {
      // 弹出错误信息
      final notification = ResCode.getCorNotification(res.resCode);
      ToastHelper.showToaster(notification);
    }
  }

  static Future<void> reqEmailCode(
      {required String email, VoidCallback? ifSuccess}) async {
    userProv.setTmpEmail(email);
    final res = await authReq.requestEmailCode(email);
    if (res.resCode == ResCode.SUCCESS) {
      ToastHelper.showToaster(ResCode.getCorNotification(res.resCode));
      if (ifSuccess != null) ifSuccess();
    } else {
      ToastHelper.showToaster(ResCode.getCorNotification(res.resCode));
    }
  }

  static Future<void> reqEmailCodeWithTmpEmail(
      {VoidCallback? ifSuccess}) async {
    assert(userProv.tmpEmail.isNotEmpty);
    reqEmailCode(
      email: userProv.tmpEmail,
      ifSuccess: ifSuccess,
    );
  }

  static Future<void> logInWithCodeAndTmpEmail(String emailCode) async {
    assert(userProv.tmpEmail.isNotEmpty);
    await logInWithEmailCode(
      email: userProv.tmpEmail,
      emailCode: emailCode,
    );
  }



  //测试用户 Tester User
  static Future<void> logInWithTestUser(String email, String password) async {
    // 这里可以根据需要验证邮箱和密码
    if (email == 'testuser@example.com' && password == 'testpass123') {
      // 模拟成功的用户对象
      User testUser = User(
          userId: 1, // 假设的用户ID
          email: email,
          name: 'Test User',
          role: true, // 假设的角色
          token: 'test_token'
      );

      // 直接设置用户状态
      userProv.setUser(testUser);
      stateRep.saveUser(testUser);
      stateRep.setDefaultUser(testUser);
      wsInit(); // 初始化 WebSocket

      // 清空路由，进入主页
      NavigationHelper.popAllAndMainPage();
    } else {

        const notification=AppNotification(
          title: 'Invalid email or password',
          desc: 'Please check your credentials and try again.',
          situaCode: SituationEnum.ERROR, // 使用适当的情况代码
      );

      // 弹出错误信息
      ToastHelper.showToaster(notification);
    }
  }

}