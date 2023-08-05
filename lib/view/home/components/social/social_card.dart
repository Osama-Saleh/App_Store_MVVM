// ignore_for_file: camel_case_types

part of '../../../../utils/import-path/app_import_path.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
        footer: Card(
          color: AppColor.blackCardSocial,
          child: Padding(
            padding: EdgeInsets.all(AppDime.sm),
            // title Social media
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'socialMedia',
                    style: AppTextTheme.bMedium(context)?.copyWith(
                        fontSize: 18.sp, color: AppColor.bgBlack),
                  ),
                ),
                Text(
                  '4',
                  style: AppTextTheme.bSmall(context)
                      ?.copyWith( color: AppColor.bgBlack),
                ),
                Icon(
                  Icons.star,
                  color: AppColor.star,
                  size: 20.sp,
                )
              ],
            ),
          ),
        ),
        child:CustomNetworkImage(imageUrl: AppMedia.testImageNetwork)
        ,);
  }
}
