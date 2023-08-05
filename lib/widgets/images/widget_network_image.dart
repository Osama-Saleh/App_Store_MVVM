part of '../../utils/import-path/app_import_path.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {super.key, required this.imageUrl, this.width, this.height});
  final String imageUrl;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imageUrl),
      fit: BoxFit.cover,
      width: width,
      height: height,
      // handel error image (URL not found)
      errorBuilder: (context, error, stackTrace) {
        return CustomAssetImage(
          imageUrl: AppMedia.notFoundImage,
          height: height,
          width: width,
        );
      },
      // loading when get image
      // child is image
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress == null
            ? child
            : const Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }
}
