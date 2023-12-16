part of '../../utils/import-path/app_import_path.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
  ControllerAuth authController = Provider.of<ControllerAuth>(context);    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all((AppDime.l).w),
          child: Form(
            key: formKey,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetView(),
                        ),
                      );
                    },
                  ),
                  AuthButton(
                    title: AppLangKey.login.tr(),
                    onTap: () {
                      log('login ${authController.mailLoginController.text}');
                      log('login ${authController.passLoginController.text}');
                      // if (formKey.currentState!.validate()) {
                      //   log('validator');
                      //   formKey.currentState?.save();
                      // }
                    },
                  ),
                  AuthFooter(
                      first: AppLangKey.notAccount.tr(),
                      second: AppLangKey.register.tr(),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>const RegisterView(),));
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
