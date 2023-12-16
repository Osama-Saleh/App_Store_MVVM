part of '../../utils/import-path/app_import_path.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ControllerAuth authContoller = Provider.of<ControllerAuth>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all((AppDime.l).w),
          child: Form(
            key: formKey,
            child: SizedBox(
              height: 1.sh,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AuthLogo(),
                  SizedBox(
                    height: (AppDime.md).h,
                  ),
                  //* Email
                  AuthEmail(controller: authContoller.mailRegisterController),
                  SizedBox(
                    height: (AppDime.md).h,
                  ),
                  //* Passwrod
                  AuthPassword(
                    controller: authContoller.passRegisetrController,
                  ),
                  //* Confirm Passwrod
                  AuthPassword(
                    controller: authContoller.confirmPassRegisetrController,
                    isConfirm: true,),
                  AuthButton(
                    title: AppLangKey.register.tr(),
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        log('validator');
                        formKey.currentState?.save();
                      }
                    log(authContoller.userAuthModel.dataUser());
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
      ),
    );
  }
}
