import 'package:flutter/material.dart';

class DropdownItem {
  String? id;
  final String? description;
  final String? additionalDescription;
  final Map? additionalData;
  bool? isChecked;
  bool? isCustom;
  Widget? prefixIcon;

  DropdownItem(
      {required this.id,
      required this.description,
      this.additionalDescription,
      this.additionalData,
      this.isCustom = false,
      this.isChecked = false,
      this.prefixIcon});

  @override
  String toString() => 'DropdownItem(description: $description, id: $id)';

  @override
  bool operator ==(covariant DropdownItem other) {
    if (identical(this, other)) return true;

    return other.description == description && other.id == id;
  }

  @override
  int get hashCode => description.hashCode ^ id.hashCode;
}
