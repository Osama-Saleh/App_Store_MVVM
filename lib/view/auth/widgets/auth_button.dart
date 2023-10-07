part of '../../../utils/import-path/app_import_path.dart';

class AuthButton extends StatelessWidget {
  const AuthButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.width,
      this.height});

  final String title;
  final Function() onTap;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppDime.xl.r),
      splashColor: AppThemeChoose.isDark(context)
          ? AppColor.splashBtnLight
          : AppColor.splashBtnDark,
      child: Container(
        width: width ?? AppDime.fullScreen.sw,
        height: height ?? AppDime.xl.h,
        margin: EdgeInsets.all(AppDime.md.w),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: AppThemeChoose.isDark(context)
                    ? AppColor.btnColorsLight
                    : AppColor.btnColorsDark,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    ),
            borderRadius: BorderRadius.circular(AppDime.xl.r)),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: AppTextTheme.lLarge(context)?.copyWith(color: Colors.white,
            fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
