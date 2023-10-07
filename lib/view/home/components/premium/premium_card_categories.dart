part of '../../../../utils/import-path/app_import_path.dart';

class PremiumCardCategories extends StatelessWidget {
  const PremiumCardCategories({super.key,required this.model,required this.name});
  final List model;
  final String name;
  // final List gemes;
  // final List gemes;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 160.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w, right: 8.w),
                child: Text(
                '$name',
                  style: AppTextTheme.dSmall(context),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    

                    return PremiumCard(
                        games: model[index]);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10.w,
                  ),
                  itemCount:model.length,
                ),
              )
            ],
          ),
        );
  }
}
