part of '../../../utils/import-path/app_import_path.dart';
class AuthEmail extends StatelessWidget {
  final TextEditingController controller;
  const AuthEmail({super.key,required this.controller});
  @override
  Widget build(BuildContext context) {
  ControllerAuth authController = Provider.of<ControllerAuth>(context);
    return AuthTextFormField(
                  hintText: AppLangKey.email,
                  label: AppLangKey.email,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: AppMedia.mail,
                  validator: AppValidators.isEmail,
                  onSaved: authController.userAuthModel.setMail,
                  controller:controller ,
                );
  }
}