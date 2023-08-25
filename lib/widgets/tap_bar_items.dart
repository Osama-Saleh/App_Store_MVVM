part of '../utils/import-path/app_import_path.dart';

class TabBarItems extends StatelessWidget {
  const TabBarItems({
    super.key,
    required this.title,
    required this.image,
  });
  final String? title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          image!,
          width: 30.w,
          colorFilter: ColorFilter.mode(
              AppThemeChoose.isDark(context)
                  ? AppColor.bgWhite
                  : AppColor.bgBlack,
              BlendMode.srcIn ),
        ),
        SizedBox(
          width: AppDime.md,
        ),
        Expanded(
            child: Text(
          title!,
          style: GoogleFonts.aBeeZee(fontSize: 16.sp),
        ))
      ],
    );
  }
}
