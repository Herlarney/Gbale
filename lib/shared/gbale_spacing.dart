// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gbale/core/constants/gbale_dimensions.dart';

class GbaleSpacing extends StatelessWidget {
  const GbaleSpacing.empty({super.key})
      : height = GbaleDimensions.zero,
        width = GbaleDimensions.zero;
 const GbaleSpacing.xxxLargeWidth({Key? key})
      : this.width(GbaleDimensions.xxxLarge, key: key);

  const GbaleSpacing.xxLargeWidth({Key? key})
      : this.width(GbaleDimensions.xxLarge, key: key);

  const GbaleSpacing.xLargeWidth({Key? key})
      : this.width(GbaleDimensions.xLarge, key: key);

  const GbaleSpacing.largeWidth({Key? key})
      : this.width(GbaleDimensions.large, key: key);

  const GbaleSpacing.bigWidth({Key? key})
      : this.width(GbaleDimensions.big, key: key);

  const GbaleSpacing.mediumWidth({Key? key})
      : this.width(GbaleDimensions.medium, key: key);

  const GbaleSpacing.smallWidth({Key? key})
      : this.width(GbaleDimensions.small, key: key);

  const GbaleSpacing.xxxSmallWidth({Key? key})
      : this.width(GbaleDimensions.xxxSmall, key: key);

  const GbaleSpacing.xxSmallWidth({Key? key})
      : this.width(GbaleDimensions.xxSmall, key: key);

  const GbaleSpacing.xSmallWidth({Key? key})
      : this.width(GbaleDimensions.xSmall, key: key);

  const GbaleSpacing.tinyWidth({Key? key})
      : this.width(GbaleDimensions.tiny, key: key);
  const GbaleSpacing.xxxLargeHeight({Key? key})
      : this.height(GbaleDimensions.xxxLarge, key: key);

  const GbaleSpacing.xxLargeHeight({Key? key})
      : this.height(GbaleDimensions.xxLarge, key: key);

  const GbaleSpacing.xLargeHeight({Key? key})
      : this.height(GbaleDimensions.xLarge, key: key);

  const GbaleSpacing.largeHeight({Key? key})
      : this.height(GbaleDimensions.large, key: key);

  const GbaleSpacing.bigHeight({Key? key})
      : this.height(GbaleDimensions.big, key: key);

  const GbaleSpacing.mediumHeight({Key? key})
      : this.height(GbaleDimensions.medium, key: key);

  const GbaleSpacing.smallHeight({Key? key})
      : this.height(GbaleDimensions.small, key: key);

  const GbaleSpacing.xSmallHeight({Key? key})
      : this.height(GbaleDimensions.xSmall, key: key);

  const GbaleSpacing.xxSmallHeight({Key? key})
      : this.height(GbaleDimensions.xxSmall, key: key);

  const GbaleSpacing.xxxSmallHeight({Key? key})
      : this.height(GbaleDimensions.xxxSmall, key: key);

  const GbaleSpacing.tinyHeight({Key? key})
      : this.height(GbaleDimensions.tiny, key: key);

  const GbaleSpacing.width(this.width, {super.key}) : height = GbaleDimensions.zero;

  const GbaleSpacing.height(this.height, {super.key})
      : width = GbaleDimensions.zero;

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: super.key,
      height: height,
      width: width,
    );
  }
}
