part of '../utils/import-path/app_import_path.dart';
class ControllerAuth extends ChangeNotifier{
  TextEditingController passLoginController= TextEditingController();
  TextEditingController passRegisetrController= TextEditingController();
  TextEditingController confirmPassRegisetrController= TextEditingController();
  TextEditingController mailRegisterController = TextEditingController();
  TextEditingController mailLoginController = TextEditingController();
  TextEditingController mailForgetController = TextEditingController();
  
    IconData  PassIcon = AppMedia.showPass;
    ///[isShow = true]
    bool isShow = true;
    void changePassIcon(){
      isShow = !isShow;
      if(isShow){
        PassIcon = AppMedia.showPass;
      }else{
        PassIcon = AppMedia.noShowPass;
      }
      notifyListeners();
    }
    //!----------------------- userData ---------------------------------------
    UserAuthModel userAuthModel = UserAuthModel();
    /// [currenPassword] used to save password  before match with confirm password
    // String currenPasswrod = '';
}