import 'package:company_ui/utils/res/fonts.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;

  const CustomTextFormField({
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:
          isPassword ? TextInputType.visiblePassword : TextInputType.text,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: AppFonts.Poppins_Light,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        prefixIcon: Icon(prefixIcon),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        filled: true,
        fillColor: Color(0xffd7f2e2),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xfff6FCF97)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xfff6FCF97)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xfff6FCF97)),
        ),
      ),
    );
  }
}
