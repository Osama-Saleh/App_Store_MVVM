part of '../utils/import-path/app_import_path.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.white,
      // foregroundColor: Colors.black,
      // centerTitle: true,
      title: Text(
        AppLangKey.appName.tr(),
        style: Theme.of(context).textTheme.titleLarge,
        // style: GoogleFonts.roboto(fontSize: AppDime.xl.sp),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PageMyApp(),));
            },
            icon: SvgPicture.asset(
              AppMedia.myApp,
              colorFilter: ColorFilter.mode(AppColor.bgWhite, BlendMode.difference),
              width: AppDime.xl.w,
              height: AppDime.xl.h,
            ))
      ],
      bottom:  TabBar(
        tabs: [
        TabBarItems(title: AppLangKey.socialMediaTab.tr(), image: AppMedia.socialMedia),
        TabBarItems(title: AppLangKey.premiumTab.tr(), image: AppMedia.premium),
      ]),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + kTextTabBarHeight.h);
}
