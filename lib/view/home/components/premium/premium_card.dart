part of '../../../../utils/import-path/app_import_path.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({super.key, this.games});
  final GamesModel? games;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsView(model: games) ,));
          },
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10.sp)),
            child: Stack(
              children: [
                CustomNetworkImage(
                  imageUrl: '${games?.image}',
                  height: 120.h,
                  width: 140.w,
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
                        Expanded(
                          child: Text(
                            '${games?.nameApp}',
                            overflow: TextOverflow.ellipsis,
                            style: AppTextTheme.bLarge(context)?.copyWith(
                              color: AppColor.bgBlack,
                            ),
                          ),
                        ),
                        Text(
                          '${games?.price} ${AppLangKey.jd.tr()}',
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
