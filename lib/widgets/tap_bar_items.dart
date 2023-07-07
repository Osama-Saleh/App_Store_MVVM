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
        SvgPicture.asset(image!,width: AppDime.xl.w),
        SizedBox(width: AppDime.md.w,),
        Text(title!,style: GoogleFonts.aBeeZee(fontSize: AppDime.l.sp),)
      ],
    );
  }
}