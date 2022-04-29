class InputChipModel {
  final String label;
  final String urlAvatar;

  InputChipModel({
    required this.label,
    required this.urlAvatar,
  });

  InputChipModel copy({
    String? label,
    String? urlAvatar,
  }) =>
      InputChipModel(
        label: label ?? this.label,
        urlAvatar: urlAvatar ?? this.urlAvatar,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InputChipModel &&
          runtimeType == other.runtimeType &&
          label == other.label &&
          urlAvatar == other.urlAvatar;

  @override
  int get hashCode => label.hashCode ^ urlAvatar.hashCode;
}