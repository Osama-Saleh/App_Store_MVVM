part of '../../../utils/import-path/app_import_path.dart';
class AuthPassword extends StatelessWidget {
  const AuthPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
                  hintText: AppLangKey.pass,
                  label: AppLangKey.pass,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  prefixIcon: AppMedia.pass,
                  suffixIcon: AppMedia.showPass,
                  validator: AppValidators.isPass,
                  onSaved: (p0) => print(p0),
                );
  }
}