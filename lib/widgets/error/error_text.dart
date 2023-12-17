part of '../../utils/import-path/app_import_path.dart';
class ErrorText extends StatelessWidget {
  final String title;
  const ErrorText({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title,
    style: AppTextTheme.bMedium(context)?.copyWith(color: AppColor.bgRed),
    ),
    
    );
  }
}