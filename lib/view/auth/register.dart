part of '../../utils/import-path/app_import_path.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
 
  @override
  Widget build(BuildContext context) {
    ControllerAuth authController = Provider.of<ControllerAuth>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all((AppDime.l).w),
          child: Form(
            key: RegisterView.formKey,
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
                  AuthEmail(controller: authController.mailRegisterController),
                  SizedBox(
                    height: (AppDime.md).h,
                  ),
                  //* Passwrod
                  AuthPassword(
                    controller: authController.passRegisetrController,
                  ),
                  //* Confirm Passwrod
                  AuthPassword(
                    controller: authController.confirmPassRegisetrController,
                    isConfirm: true,),
                  authController.isLoading ? const Center(child: CircularProgressIndicator(),) : AuthButton(
                    title: AppLangKey.register.tr(),
                    onTap: () async{
                      if (RegisterView.formKey.currentState!.validate()) {
                        log('validator');
                        RegisterView.formKey.currentState?.save();
                        if(await authController.singInAuthAndRegister(isLogin: false) != null){
                          log('created account');
                        }
                      }
                    log(authController.userAuthModel.dataUser());
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
