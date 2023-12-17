part of '../../utils/import-path/app_import_path.dart';
class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    ControllerAuth authController = Provider.of<ControllerAuth>(context);
    return Scaffold(
      body: StreamBuilder(stream: authController.userState(), builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return snapshot.hasData ? const PageHome() : const LoginView();
      },),
    );
  }
}