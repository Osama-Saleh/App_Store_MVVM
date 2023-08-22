part of '../../../../utils/import-path/app_import_path.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            
          },
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp)
            ),
            child: Stack(
              children: [
                CustomNetworkImage(
                  imageUrl: AppMedia.testImageNetwork,
                  height: 120.h,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    width: 1.sw,
                    padding: EdgeInsets.all(1.w),
                    color: AppColor.blackCardSocial,
                    child: Row(
                      children: [
                        Text(
                          'facbook',
                          style: AppTextTheme.bLarge(context)
                              ?.copyWith(color: AppColor.bgBlack),
                        ),
                        Spacer(),
                        Text(
                          '10 ${AppLangKey.jd.tr()}',
                          style: AppTextTheme.bMedium(context)
                              ?.copyWith(color: AppColor.bgBlack),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
