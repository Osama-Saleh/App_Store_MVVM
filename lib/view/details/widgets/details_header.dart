part of '../../../utils/import-path/app_import_path.dart';
class DetailsHeader extends StatelessWidget {
  final SocialModel socialModel;
  const DetailsHeader({super.key,required this.socialModel});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                height: 0.2.sh,
                width: 0.4.sw,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: CustomNetworkImage(imageUrl: socialModel.image??'',
                
                ),
              ),
              SizedBox(height: 0.01.sh),
              SizedBox(
                height: 100,
                child: Row(children: [
                  DetailsCardInfo(icon: Icons.category,title: socialModel.type??''),
                  DetailsCardInfo(icon: Icons.stars,title: socialModel.rating??''),
                  DetailsCardInfo(icon: Icons.memory,title: socialModel.size??''),
                  DetailsCardInfo(icon: Icons.download,title: socialModel.download??''),
                  
                ]),
              ),
            ],
          );
  }
}