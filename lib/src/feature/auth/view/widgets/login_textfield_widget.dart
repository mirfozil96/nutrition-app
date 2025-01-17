import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrition/src/core/constants/context_extension.dart';
import '../../../../core/style/app_colors.dart';

class LoginTextfieldWidget extends StatelessWidget {
  final String hintText;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const LoginTextfieldWidget({
    required this.hintText,
    this.controller,
    super.key,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        cursorColor: Colors.deepPurple,
        cursorHeight: 22,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          errorStyle: TextStyle(color: Colors.red.shade900),
          hintText: hintText,
          hintStyle: context.theme.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 11.sp,
            color: AppColors.cD9D9D9,
            fontFamily: "Poppins",
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.cD9D9D9,
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.cD9D9D9,
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.cD9D9D9,
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        validator: validator,
        onChanged: onChanged,
      );
}
