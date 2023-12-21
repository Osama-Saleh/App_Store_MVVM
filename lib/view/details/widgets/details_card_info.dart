part of '../../../utils/import-path/app_import_path.dart';

class DetailsCardInfo extends StatelessWidget {
  final IconData icon;
  final String title;
  const DetailsCardInfo({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon,size: 25.sp,),
            Text(title,style: TextStyle(fontSize: 20.sp),)
          ],
        ),
      ),
    );
  }
}