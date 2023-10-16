part of '../../../utils/import-path/app_import_path.dart';

class AuthTextFormField extends StatelessWidget {
   AuthTextFormField({super.key,
  this.hintText,this.label,this.helperText,this.prefixIcon,this.suffixIcon,
  this.obscureText=false,
  this.keyboardType,
  this.validator,
  this.onSaved,
  this.onChanged,
  this.onTapSuffixIcon,
  });
  final String? hintText;
  final String? label;
  final String? helperText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved ;
  final Function(String)? onChanged ;
  final Function()? onTapSuffixIcon;

  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:keyboardType ?? TextInputType.emailAddress,
      obscureText: obscureText,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        border: InputBorder.none,
        errorMaxLines: 2,
        hintText:hintText??'enter data',
        label: Text(label!),
        helperText: helperText??'',
        prefixIcon: Icon(prefixIcon),
        suffixIcon: InkWell(
          onTap:onTapSuffixIcon ,
          child: Icon(suffixIcon)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.bgBlue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.bgBlue),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.bgRed),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.bgRed),
        ),
      ),
    );
  }
}
