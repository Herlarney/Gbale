import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GbaleTextFormFieldWidget extends StatelessWidget {
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final onSaved;
  final hintText;
  final textInputType;
  final int? maxLines;
  final textInputAction;
  final textAlign;
  final onChanged;
  final controller;
  final EdgeInsets? contentpadding;
  final bool? readOnly;
  final obscuringCharacter;
  final bool? checklabelText;
  final String? labelText;
  final bool? enabled;
  final Function()? onTap;
  final String? initialVlaue;
  final bool isPassWord;

  GbaleTextFormFieldWidget(
      {this.prefixIcon,
      this.validator,
      this.contentpadding,  
      this.onSaved,
      this.maxLines,
      this.hintText,
      this.textInputAction,
      this.textInputType,
      this.textAlign,
      this.onChanged,
      this.controller,
      this.readOnly,
      this.obscuringCharacter,
      this.checklabelText = false,
      this.labelText,
      this.enabled = true,
      this.onTap,
      this.initialVlaue,
      this.isPassWord = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        initialValue: initialVlaue,
        cursorWidth: 1.w,
        maxLines: maxLines ?? 1,
        enabled: enabled,
        textInputAction: textInputAction,
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 15.sp,
          letterSpacing: 0.4,
        ),
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.symmetric(
            vertical: 10.h,
            horizontal: 15.w,
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
          prefixIcon: prefixIcon,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(5.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(5.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(5.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
        obscuringCharacter: '●',
        controller: controller,
        textAlign: textAlign ?? TextAlign.start,
        keyboardType: textInputType,
        onFieldSubmitted: onSaved,
        onSaved: onSaved,
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
