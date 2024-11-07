import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

extension WidgetExtension on Widget {
  Widget padded([final double value = 8]) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Widget topPadded([final double value = 8]) => Padding(
        padding: EdgeInsets.only(top: value),
        child: this,
      );

  Widget bottomPadded([final double value = 8]) => Padding(
        padding: EdgeInsets.only(bottom: value),
        child: this,
      );

  Widget leftPadded([final double value = 8]) => Padding(
        padding: EdgeInsets.only(left: value),
        child: this,
      );

  Widget rightPadded([final double value = 8]) => Padding(
        padding: EdgeInsets.only(right: value),
        child: this,
      );

  Widget verticalPadded([final double value = 8]) => Padding(
        padding: EdgeInsets.symmetric(vertical: value),
        child: this,
      );

  Widget horizontalPadded([final double value = 8]) => Padding(
        padding: EdgeInsets.symmetric(horizontal: value),
        child: this,
      );

  Widget paddedLTRB({double left = 0, double top = 0, double right = 0, double bottom = 0}) => Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Widget paddedOnly({double left = 0, double top = 0, double right = 0, double bottom = 0}) => Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Widget loadShimmer() {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFE0E0E0),
      highlightColor: const Color(0xFFF5F5F5),
      child: this,
    );
  }
}
