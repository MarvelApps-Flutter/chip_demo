import 'package:flutter/material.dart';

class FilterChipModel {
  final String label;
  final Color color;
  final bool isSelected;

  const FilterChipModel({
    required this.label,
    required this.color,
    this.isSelected = false,
  });

  FilterChipModel copy({
    String? label,
    Color? color,
    bool? isSelected,
  }) =>
      FilterChipModel(
        label: label ?? this.label,
        color: color ?? this.color,
        isSelected: isSelected ?? this.isSelected,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilterChipModel &&
          runtimeType == other.runtimeType &&
          label == other.label &&
          color == other.color &&
          isSelected == other.isSelected;

  @override
  int get hashCode => label.hashCode ^ color.hashCode ^ isSelected.hashCode;
}