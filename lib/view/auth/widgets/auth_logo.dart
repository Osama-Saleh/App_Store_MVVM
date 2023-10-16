part of '../../../utils/import-path/app_import_path.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAssetImage(
      imageUrl: AppThemeChoose.isDark(context)
          ? AppMedia.appStoreDark
          : AppMedia.appStore,
                  width: 0.40.sw,

    );
  }
}
