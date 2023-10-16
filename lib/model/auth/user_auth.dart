// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../utils/import-path/app_import_path.dart';
class UserAuthModel {
  String? mail;
  String? password;
  UserAuthModel({
    this.mail,
    this.password,
  });

 void setMail(String? value) => mail = value;
 void setPass(String? value) => password = value;


String dataUser ()=> 'email :$mail ,passwrod: $password';

}
