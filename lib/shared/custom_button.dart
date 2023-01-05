
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbale/shared/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final Color? buttonColor;
  final Function()? onTap;
  final TextStyle? textStyle;
  const CustomButton({super.key, this.onTap, this.label, this.buttonColor, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
            color: buttonColor ?? Colors.green[200],
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: Center(
          child: CustomText(
            text: label!,
            textStyle: textStyle ,
          ),
        ),
      ),
    );
  }
}
