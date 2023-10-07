part of '../../utils/import-path/app_import_path.dart';
class ForgetView extends StatelessWidget {
  const ForgetView({super.key});
    static GlobalKey<FormState> formKeyForget = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all((AppDime.l).w),
          child: Form(
            key: formKeyForget,
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
                  const AuthEmail(),
                  SizedBox(
                    height: (AppDime.md).h,
                  ),
                  
                  AuthButton(
                    title: AppLangKey.resetPassword.tr(),
                    onTap: () {
                      if (formKeyForget.currentState!.validate()) {
                        log('validator');
                        formKeyForget.currentState?.save();
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