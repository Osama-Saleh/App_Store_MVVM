import 'package:app_store/utils/import-path/app_import_path.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 5.w),
          child: Row(
                children: [
          //* image
          Expanded(
            child: ClipOval(
              child: CustomAssetImage(
                imageUrl: AppMedia.notFoundImage,
                width: 50.w,
                height: 80.w,
              ),
            ),
          ),
          5.horizontalSpace,
          //* colum (name - mail)
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLangKey.nameUser.tr()),
                const Text('OsamaSaleh@gmail.cosm'),
              ],
            ),
          )
                ],
              ),
        ));
  }
}
