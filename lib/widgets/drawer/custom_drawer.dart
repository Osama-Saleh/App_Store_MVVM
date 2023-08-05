import 'package:app_store/widgets/drawer/widget/drawer_header.dart';
import 'package:app_store/widgets/drawer/widget/drawer_setting.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          CustomDrawerHeader(),
          Divider(
            height: 0,
          ),
          Expanded(
            flex: 3,
            child: DrawerSetting(),
          ),
        ],
      ),
    );
  }
}
