// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
class TopologySelectorLabelRequirement {
  /// Default constructor.
  const TopologySelectorLabelRequirement({
    required this.key,
    required this.values,
  });

  /// Creates a [TopologySelectorLabelRequirement] from JSON data.
  factory TopologySelectorLabelRequirement.fromJson(Map<String, dynamic> json) {
    final tempKeyJson = json['key'];
    final tempValuesJson = json['values'];

    final tempKey = tempKeyJson;
    final tempValues = tempValuesJson;

    return TopologySelectorLabelRequirement(
      key: tempKey,
      values: tempValues,
    );
  }

  /// The label key that the selector applies to.
  final String key;

  /// An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  final List<String> values;

  /// Converts a [TopologySelectorLabelRequirement] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempKey = key;
    final tempValues = values;

    jsonData['key'] = tempKey;

    jsonData['values'] = tempValues;

    return jsonData;
  }
}
