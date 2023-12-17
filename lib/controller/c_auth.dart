part of '../utils/import-path/app_import_path.dart';

class ControllerAuth extends ChangeNotifier {
  TextEditingController passLoginController = TextEditingController();
  TextEditingController passRegisetrController = TextEditingController();
  TextEditingController confirmPassRegisetrController = TextEditingController();
  TextEditingController mailRegisterController = TextEditingController();
  TextEditingController mailLoginController = TextEditingController();
  TextEditingController mailForgetController = TextEditingController();

  IconData PassIcon = AppMedia.showPass;
  bool _isLoading = false;

  bool get isLoading => _isLoading;
  set isLoading(bool newValue) {
    _isLoading = newValue;
    notifyListeners();
  }

  ///[isShow = true]
  bool isShow = true;
  void changePassIcon() {
    isShow = !isShow;
    if (isShow) {
      PassIcon = AppMedia.showPass;
    } else {
      PassIcon = AppMedia.noShowPass;
    }
    notifyListeners();
  }

  //!----------------------- userData ---------------------------------------
  UserAuthModel userAuthModel = UserAuthModel();

  /// [currenPassword] used to save password  before match with confirm password
  // String currenPasswrod = '';
  //***************************************************************/
  /// [singInAuth] sign in and register
  //***************************************************************/
  Future singInAuthAndRegister({bool isLogin = true}) async {
    try {
      isLoading = true;
      UserCredential userCredential = isLogin
          ? await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: mailLoginController.text,
              password: passLoginController.text)
          : await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: mailRegisterController.text,
              password: passRegisetrController.text,
            );

      if (userCredential.user != null) {
        isLoading = false;
        print('userCredential.user ${userCredential.user}');
        return userCredential.user;
      } else {
        isLoading = false;
        print('Error');
        return null;
      }
    } on SocketException {
      isLoading = false;
      log('SocketException', name: 'singInAuthAndRegister');
      return null;
    } on FirebaseAuthException catch (error) {
      isLoading = false;
      log('FirebaseAuthException ${error.toString()}',
          name: 'singInAuthAndRegister');
      return null;
    } catch (e) {
      isLoading = false;
      log('Error ${e.toString()}', name: 'singInAuthAndRegister');
      return null;
    }
  }

  //***************************************************************/
  /// [resetPasswrod]
  //***************************************************************/
  Future<void> resetPassword() async {
    isLoading = true;
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: mailForgetController.text);
    isLoading = false;
  }

  //***************************************************************/
  /// [logOut]
  //***************************************************************/
  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  //***************************************************************/
  /// [UserState] Check user and return data (id - mail - .....)
  //***************************************************************/
  Stream<User?> userState() {
    return FirebaseAuth.instance.authStateChanges();
  }
  //!========================================================================
}
