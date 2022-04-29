import 'package:flutter/material.dart';

class ChipModel {
  final String initial;
  final String label;
  final Color backgroundColor;

  const ChipModel({
    required this.initial,
    required this.label,
    required this.backgroundColor,
  });

  ChipModel copy({
    String? initial,
    String? label,
    Color? backgroundColor,
  }) =>
      ChipModel(
        initial: initial ?? this.initial,
        label: label ?? this.label,
        backgroundColor: backgroundColor ?? this.backgroundColor,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChipModel &&
          runtimeType == other.runtimeType &&
          initial == other.initial &&
          label == other.label &&
          backgroundColor == other.backgroundColor;

  @override
  int get hashCode => label.hashCode ^ backgroundColor.hashCode;
}
