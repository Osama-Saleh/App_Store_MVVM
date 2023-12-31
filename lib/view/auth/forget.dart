part of '../../utils/import-path/app_import_path.dart';
class ForgetView extends StatelessWidget {
  const ForgetView({super.key});
    static GlobalKey<FormState> formKeyForget = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ControllerAuth authController = Provider.of<ControllerAuth>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: EdgeInsets.all((AppDime.l).w),
          child: Form(
            key: formKeyForget,
            child: SizedBox(
                height: 1.sh,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //* logo
                  const AuthLogo(),
                  SizedBox(
                    height: (AppDime.md).h,
                  ),
                  Text(AppLangKey.hintResetPass.tr(),
                  textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: (AppDime.md).h,
                  ),
                  //* Email
                  AuthEmail(controller: authController.mailForgetController),
                  SizedBox( 
                    height: (AppDime.md).h,
                  ),
                  
                  authController.isLoading ? const Center(child: CircularProgressIndicator(),) : AuthButton(
                    title: AppLangKey.resetPassword.tr(),
                    onTap: () {
                      if (formKeyForget.currentState!.validate()) {
                        log('validator');
                        formKeyForget.currentState?.save();
                        authController.resetPassword();
                      }
                    },
                  ),
                  AuthFooter(
                      first: AppLangKey.haveAccount.tr(),
                      second: AppLangKey.login.tr(),
                      onTap: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            ),
          ),
        ),
    );
  }
}