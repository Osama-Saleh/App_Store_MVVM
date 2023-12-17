part of '../../utils/import-path/app_import_path.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override

  @override
  Widget build(BuildContext context) {
    ControllerAuth authController = Provider.of<ControllerAuth>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all((AppDime.l).w),
          child: Form(
            key: LoginView.formKey,
            child: Container(
              height: 1.sh,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AuthLogo(),
                  SizedBox(
                    height: (AppDime.md).h,
                  ),
                  //* Email
                  AuthEmail(controller: authController.mailLoginController),
                  SizedBox(
                    height: (AppDime.md).h,
                  ),
                  //* Passwrod
                  AuthPassword(controller: authController.passLoginController),
                  AuthForget(
                    onTap: () {
                      log('forget pass');
                      Navigator.pushNamed(context, AppRoutes.forgetView);
                    },
                  ),
                  authController.isLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : AuthButton(
                          title: AppLangKey.login.tr(),
                          onTap: () async{
                            if (LoginView.formKey.currentState!.validate()) {
                              log('validator');
                              LoginView.formKey.currentState?.save();
                              if(await authController.singInAuthAndRegister(isLogin: true) != null){
                                log('login successfully');
                              }
                            }
                          },
                        ),
                  AuthFooter(
                      first: AppLangKey.notAccount.tr(),
                      second: AppLangKey.register.tr(),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.registerView);
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
