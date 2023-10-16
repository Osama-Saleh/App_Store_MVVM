part of '../import-path/app_import_path.dart';

class AppValidators
{
  static final String messageEnterValue = AppLangKey.enterValue.tr();
  static final String messageErrorEmail = AppLangKey.errorEmail.tr();
  static final String messageCorrectPass = AppLangKey.errorPass.tr();
  static final String messageConfirmPass = AppLangKey.confirmPass.tr();
  static final String messagePrice = AppLangKey.errorPass.tr();

  ///[CheckMail]
  static String? isEmail(String? value){
    if(value?.trim().isEmpty ?? true){
      return messageEnterValue;
    }else if (!validators.isEmail(value!.trim())){
      return messageErrorEmail;
    }
    return null;
  }
  ///[CheckPassword]
  static String? isPass(String? value){
    if(value?.trim().isEmpty ?? true){
      return messageEnterValue;
    }else if (!validators.isLength(value!.trim(), 6,10)){
      return messageCorrectPass;
    }
    return null;
  }

   ///[ConfirmPasswrod]
   //* value is secound textField and pass first TextField to compare them the same or not
  static String? ConfirmPasswrod(String? value,String? pass){
    if(value?.trim().isEmpty ?? true){
      return messageEnterValue;
    }else if (!validators.equals(value, pass)){
      return messageConfirmPass;
    }
    return null;
  }
}