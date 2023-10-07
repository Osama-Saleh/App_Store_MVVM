part of '../../../utils/import-path/app_import_path.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter(
      {super.key,
      required this.first,
      required this.second,
      required this.onTap});
  final String first;
  final String second;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      
      text: TextSpan(
        text: first,

        //* very important text not apper if not use it style
        style: DefaultTextStyle.of(context).style,
        children: [
        const  TextSpan(text: ' '),
          TextSpan(
              text: second,
             recognizer:  TapGestureRecognizer()..onTap = onTap,
              style: AppTextTheme.bMedium(context)?.copyWith(
                  color: AppThemeChoose.isDark(context)
                      ? AppColor.bgPink
                      : AppColor.bgBlue),),
        ],
      ),
    );
  }
}
