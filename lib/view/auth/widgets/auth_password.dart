part of '../../../utils/import-path/app_import_path.dart';

class AuthPassword extends StatelessWidget {
   const AuthPassword(
      {super.key,this.onChanged, this.onSaved, this.isConfirm = false});
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final bool isConfirm;
  @override
  Widget build(BuildContext context) {
    ControllerAuth authController = Provider.of<ControllerAuth>(context);
    return AuthTextFormField(
      hintText: isConfirm ? AppLangKey.confirmPass : AppLangKey.pass,
      label: isConfirm ? AppLangKey.confirmPass : AppLangKey.pass,
      keyboardType: TextInputType.number,
      obscureText: authController.isShow,
      prefixIcon: AppMedia.pass,
      suffixIcon: authController.PassIcon,
      onTapSuffixIcon: () => authController.changePassIcon(),
      validator: (value) {
        return isConfirm
            ? AppValidators.ConfirmPasswrod(value,authController.currenPasswrod)
            : AppValidators.isPass(value);
      },
      onSaved: authController.userAuthModel.setPass,
      onChanged: (value) => isConfirm ? null : authController.currenPasswrod = value,
    );
  }
}
