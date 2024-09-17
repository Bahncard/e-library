import 'package:elibrary/state_management/prov/auth_prov.dart';
import 'package:elibrary/state_management/prov_manager.dart';
import 'package:elibrary/style/ui_params.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elibrary/generated/l10n.dart';
import '../../../constant/app_strings.dart';
import '../../../usecase/handler/auth_handler.dart';
import '../../../util/format_util.dart';
import '../../helper/toast_helper.dart';
import '../../widget/button_getter.dart';

class SignInPage extends StatefulWidget{
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //使用它，可以在表单组件的外部使用表单状态
  final _formKey = GlobalKey<FormState>();

  final ValueNotifier<bool> pwdVisibleNotifier = ValueNotifier(true);
  late final TextEditingController idenController;
  late final TextEditingController pwdController;

  late int lastTime;

  String? emailTip;
  String? pwdTip;

  @override
  void initState() {
    lastTime=0;
    emailTip=pwdTip=null;
    initializeControllers();
    super.initState();
  }

  @override
  void dispose() {
    disposeControllers();
    super.dispose();
  }

  void initializeControllers() {
    //listener在文本更改时会被调用
    idenController = TextEditingController()
      ..addListener(validateAllThrottle);
    pwdController = TextEditingController()
      ..addListener(validateAllThrottle);
  }

  void disposeControllers() {
    idenController.dispose();
    pwdController.dispose();
  }

  void validateAllThrottle(){
    int now = DateTime.now().millisecondsSinceEpoch;
    if(now-lastTime< 300)return;
    lastTime=now;
    _formKey.currentState?.validate();
  }

  // 此方法最后调用
  bool allFieldValid(){
    return _formKey.currentState?.validate()??false;
  }


  String? validateEmail(String? value){
    if(value==null||value.isEmpty){
      emailTip= S.of(context).pleaseEnterEmail;
    }else if(!FormatTool.isEmailValid(value)){
      emailTip= S.of(context).invalidEmail;
    }else{
      emailTip=null;
    }
    return emailTip;
  }

  String? validatePwd(String? value){
    if(value==null||value.isEmpty){
      pwdTip = S.of(context).pleaseEnterPassword;
    }else if(!FormatTool.isPwdValid(value)){
      pwdTip =S.of(context).invalidPassword;
    }else{
      pwdTip=null;
    }
    return pwdTip;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 18.w,vertical: 4.h),
          padding: EdgeInsets.only(top: 120.h),
          child: Column(
            children: [
              Align(
                child: Text(
                  S.of(context).useSchoolEmail,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: UIParams.hugeGap.h,),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: S.of(context).schoolEmail,
                          hintText: S.of(context).schoolEmail,
                          prefixIcon: const Icon(Icons.email_outlined),
                          filled: false,
                          prefixIconColor: Theme.of(context).colorScheme.primary,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 5,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: idenController,
                        validator: validateEmail,
                      ),
                      SizedBox(height: UIParams.mediumGap.h),
                      ValueListenableBuilder(
                        valueListenable: pwdVisibleNotifier,
                        builder: (_, pwdObscure, __)=>TextFormField(
                          obscureText: pwdObscure,
                          controller: pwdController,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          //onChanged: (_) => _formKey.currentState?.validate(),
                          decoration: InputDecoration(
                            labelText: S.of(context).password,
                            hintText: S.of(context).password,
                            prefixIcon: const Icon(CupertinoIcons.lock),
                            prefixIconColor: Theme.of(context).colorScheme.primary,
                            filled: false,
                            suffixIcon: IconButton(
                              icon: Icon(
                                pwdObscure ? Icons.visibility : Icons.visibility_off,
                                color: Colors.black,
                                size: 20.sp,
                              ),
                              onPressed: () => pwdVisibleNotifier.value = !pwdObscure,
                            ),
                          ),
                          validator: validatePwd,
                        ),
                      ),
                      SizedBox(height: 170.h,),
                      getCustomFilledButton(
                        context: context,
                        text: S.of(context).signIn,
                        onPressed: signInPressed,
                        backgroundColor: CupertinoColors.systemBlue,
                      ),
                      SizedBox(height: UIParams.mediumGap.h,),
                      getCustomFilledButton(
                        context: context,
                        text: S.of(context).useEmailCode,
                        onPressed: ()=>ProvManager.authProv.authState=AuthState.enterEmail,
                        backgroundColor: Theme.of(context).focusColor,
                        textColor: CupertinoColors.systemBlue,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: Text(
                              S.of(context).forgotPassword,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: CupertinoColors.systemBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: UIParams.smallGap.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '* ${S.of(context).useEmailCodeIfFirst}',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // logic
  String makeTip(){
    return '${emailTip!=null?'$emailTip; ':''}${pwdTip!=null?'$pwdTip; ':''}${pwdTip!=null?S.of(context).passwordRules:''}';
  }

  void signInPressed() async {
//测试用户 Test User
    if (allFieldValid()) {
      String email = idenController.text;
      String password = pwdController.text;

      // 检查是否为测试用户
      if (email == 'testuser@example.com' && password == 'testpass123') {
        // 调用测试用户登录方法
        await AuthHandler.logInWithTestUser(email, password);
      } else {
        // 调用正常的登录方法
        await AuthHandler.logInWithPwd(
          email: email,
          password: password,
        );
      }
    } else {
      ToastHelper.showWarningWithDesc(S.of(context).invalidInput, makeTip());
    }
    // if(allFieldValid()) {
    //   AuthHandler.logInWithPwd(
    //     email: idenController.text,
    //     password: pwdController.text,
    //   );
    // }
    // else{
    //   ToastHelper.showWarningWithDesc(S.of(context).invalidInput, makeTip());
    // }
  }
}