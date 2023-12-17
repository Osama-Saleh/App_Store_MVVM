part of '../../../utils/import-path/app_import_path.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  ControllerAuth authController = Provider.of<ControllerAuth>(context);
    return AlertDialog.adaptive(
      title: Text(AppLangKey.logout.tr()),
      content: Text(AppLangKey.messageLogout.tr()),
      actions: [
        
        OutlinedButton(
          child: Text(AppLangKey.cancel.tr()),
          onPressed: () => Navigator.of(context).pop(),
        ),
        OutlinedButton(
          child: Text(AppLangKey.logout.tr()),
          onPressed: () {
            authController.logOut();
            Navigator.of(context).pop();
          },
        ),
      ],
      actionsAlignment:MainAxisAlignment.spaceAround ,
    );
  }
}