part of '../utils/import-path/app_import_path.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      centerTitle: true,
      title: Text(
        "App Store",
        style: GoogleFonts.roboto(fontSize: AppDime.xl.sp),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppMedia.myApp,
              semanticsLabel: 'A red up arrow',
              width: AppDime.xl.w,
              height: AppDime.xl.h,
            ))
      ],
      bottom: const TabBar(labelColor: Colors.black, tabs: [
        TabBarItems(title: "Social Media", image: AppMedia.socialMedia),
        TabBarItems(title: "premuim", image: AppMedia.diamond1),
      ]),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + kTextTabBarHeight.h);
}
