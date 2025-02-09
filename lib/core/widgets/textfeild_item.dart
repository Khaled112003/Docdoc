import 'package:daweny/core/thems/colors/colors.dart';
import 'package:flutter/material.dart';


class ItemTextField extends StatelessWidget {
  const ItemTextField({
    super.key,
    required this.hintText,
     this.icon,
    this.obscureText,
    this.controller, 
    this.validator,this.suffixIcon,  
  });

  final String hintText;
  final Icon? icon;
  final bool? obscureText;
  final TextEditingController? controller; 
  final String? Function(String?)? validator; 
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller, 
      obscureText: obscureText ?? false,
      validator: validator,

      decoration: InputDecoration(
        fillColor: MangerColors.lightgray,
        filled: true,
        suffixIcon:suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
         
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: icon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: MangerColors.mediumGray)
         
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:  BorderSide(color: MangerColors.mainBlue, width: 2),
        ),
      ),
    );
  }
}
