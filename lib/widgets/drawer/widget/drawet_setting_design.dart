import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerSettingDesign extends StatelessWidget {
  const DrawerSettingDesign({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.trailing,
  });
  final String title;
  final String leadingIcon;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        leadingIcon,
        width: 20.w,
        height: 20.w,
      ),
      title: Text(title),
      trailing: trailing,
    );
  }
}
