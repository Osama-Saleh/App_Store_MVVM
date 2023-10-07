part of '../../../utils/import-path/app_import_path.dart';
class AuthEmail extends StatelessWidget {
  const AuthEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
                  hintText: AppLangKey.email,
                  label: AppLangKey.email,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: AppMedia.mail,
                  validator: AppValidators.isEmail,
                  onSaved: (p0) => print(p0),
                );
  }
}