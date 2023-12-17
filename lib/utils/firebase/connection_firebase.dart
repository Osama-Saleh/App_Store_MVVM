part of '../import-path/app_import_path.dart';

class ConnectionFirebase extends StatefulWidget {
  const ConnectionFirebase({super.key});

  @override
  State<ConnectionFirebase> createState() => _ConnectionFirebaseState();
}

class _ConnectionFirebaseState extends State<ConnectionFirebase> {
  Future<FirebaseApp>? firebaseApp;

  @override
  void initState() { 
    super.initState();
    firebaseApp = Firebase.initializeApp();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: firebaseApp, builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if(snapshot.connectionState == ConnectionState.done){
          if(snapshot.hasData){
            log('connection firebase successly! ✌');
            return const PageSplash();
          }else{
            return const ErrorText(title: AppLangKey.errorNoData);
          }
        }else{
          return const ErrorText(title: AppLangKey.errorInitFirebase);
        }
      },),
    );
  }
}