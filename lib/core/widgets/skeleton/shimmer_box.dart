import 'package:flutter/material.dart';

class ShimmerBox extends Container {
  ShimmerBox({
    super.key,
    super.height,
    super.width,
  }) : super(
          decoration: BoxDecoration(color: Colors.grey.shade50, borderRadius: BorderRadius.circular(6)),
          padding: const EdgeInsets.all(6),
        );
}
