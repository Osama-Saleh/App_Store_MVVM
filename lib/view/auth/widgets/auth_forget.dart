part of '../../../utils/import-path/app_import_path.dart';

class AuthForget extends StatelessWidget {
  const AuthForget({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: InkWell(
        onTap: onTap,
        child: Text( 
          AppLangKey.forgotPass.tr(),
        style: AppTextTheme.bLarge(context)?.copyWith(
          decoration: TextDecoration.underline,
          
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
