part of '../../utils/import-path/app_import_path.dart';
class CustomAssetImage extends StatelessWidget {
  const CustomAssetImage(
      {super.key, required this.imageUrl, this.width, this.height,this.fit});
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(imageUrl),
      fit:fit?? BoxFit.cover,
      width: width,
      height: height,
      
    );
  }
}
