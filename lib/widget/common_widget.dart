import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kalakumbh/utils/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.title,
    this.titleStyle =
        const TextStyle(color: AppColors.appTextColor, fontSize: 22),
    this.backgroundColor = AppColors.appTheme,
    this.width = double.infinity,
    this.height = 50,
    this.buttonPadding = 0,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final Color backgroundColor;
  final double width;
  final double height;
  final double buttonPadding;
  final TextStyle titleStyle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(buttonPadding),
      child: Container(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: backgroundColor,
          ),
          onPressed: (onPressed != null) ? onPressed : () {},
          child: Text(
            title,
            style: titleStyle,
          ),
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  AppTextField({
    Key? key,
    this.bottomPadding = 16.0,
    required this.hint,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.isSecure = false,
    this.prefixIcon,
    this.suffixIcon,
    required this.validator,
  }) : super(key: key);

  final String hint;
  final double bottomPadding;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?) validator;
  final bool isSecure;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final InputBorder _inputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.appTheme, width: 1.0.w),
    borderRadius: BorderRadius.circular(8.0),
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecure,
      keyboardType: keyboardType,
      style: const TextStyle(color: AppColors.appTextColor),
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: _inputBorder,
        enabledBorder: _inputBorder,
        errorBorder: _inputBorder,
        focusedErrorBorder: _inputBorder,
        hintStyle: const TextStyle(color: AppColors.appPlaceholderColor),
        errorStyle: TextStyle(color: AppColors.appTheme),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
