// ignore_for_file: camel_case_types

part of '../../../../utils/import-path/app_import_path.dart';

class SocialCard extends StatelessWidget {
 final SocialModel socialModel;
  const SocialCard({
    super.key,
   required this.socialModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsView(model:socialModel ),));
      },
      child: GridTile(
        footer: Card(
          color: AppColor.blackCardSocial,
          child: Padding(
            padding: EdgeInsets.all(AppDime.sm),
            // title Social media
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '${socialModel.nameApp}',
                    style: AppTextTheme.bMedium(context)
                        ?.copyWith(fontSize: 18.sp, color: AppColor.bgBlack),
                  ),
                ),
                Text(
                  '${socialModel.rating}',
                  style: AppTextTheme.bSmall(context)
                      ?.copyWith(color: AppColor.bgBlack,fontSize: 10.sp),
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
        child:  CustomNetworkImage(imageUrl: socialModel.image!),

      ),
    );
  }
}
