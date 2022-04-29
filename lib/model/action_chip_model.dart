import 'package:flutter/material.dart';

class ActionChipModel {
  final String label;
  final IconData icon;
  final Color iconColor;

  ActionChipModel({
    required this.label,
    required this.icon,
    required this.iconColor,
  });

  ActionChipModel copy({
    String? label,
    IconData? icon,
    Color? iconColor,
  }) =>
      ActionChipModel(
        label: label ?? this.label,
        icon: icon ?? this.icon,
        iconColor: iconColor ?? this.iconColor,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActionChipModel &&
          runtimeType == other.runtimeType &&
          label == other.label &&
          icon == other.icon &&
          iconColor == other.iconColor;

  @override
  int get hashCode => label.hashCode ^ icon.hashCode ^ iconColor.hashCode;
}