import 'package:flutter/material.dart';

class ChoiceChipModel {
  final String label;
  final bool isSelected;
  Color textColor;
  Color selectedColor;

  ChoiceChipModel({
    required this.label,
    required this.isSelected,
    required this.textColor,
    required this.selectedColor,
  });

  ChoiceChipModel copy({
    String? label,
    bool? isSelected,
    Color? textColor,
    Color? selectedColor,
  }) =>
      ChoiceChipModel(
        label: label ?? this.label,
        isSelected: isSelected ?? this.isSelected,
        textColor: textColor ?? this.textColor,
        selectedColor: selectedColor ?? this.selectedColor,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChoiceChipModel &&
          runtimeType == other.runtimeType &&
          label == other.label &&
          isSelected == other.isSelected &&
          textColor == other.textColor &&
          selectedColor == other.selectedColor;

  @override
  int get hashCode =>
      label.hashCode ^
      isSelected.hashCode ^
      textColor.hashCode ^
      selectedColor.hashCode;
}