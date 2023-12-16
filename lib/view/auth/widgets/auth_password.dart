part of '../../../utils/import-path/app_import_path.dart';

class AuthPassword extends StatelessWidget {
   const AuthPassword(
      {super.key,this.onChanged, this.onSaved, this.isConfirm = false,required this.controller});
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final bool isConfirm;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    ControllerAuth authController = Provider.of<ControllerAuth>(context);
    return AuthTextFormField(
      controller: controller,
      hintText: isConfirm ? AppLangKey.confirmPass : AppLangKey.pass,
      label: isConfirm ? AppLangKey.confirmPass : AppLangKey.pass,
      keyboardType: TextInputType.number,
      obscureText: authController.isShow,
      prefixIcon: AppMedia.pass,
      suffixIcon: authController.PassIcon,
      onTapSuffixIcon: () => authController.changePassIcon(),
      validator: (value) {
        return isConfirm
            ? AppValidators.ConfirmPasswrod(value,authController.passRegisetrController.text)
            : AppValidators.isPass(authController.passRegisetrController.text);
      },
      onSaved: authController.userAuthModel.setPass,
      // onChanged: (value) => isConfirm ? null : authController.currenPasswrod = value,
    );
  }
}
