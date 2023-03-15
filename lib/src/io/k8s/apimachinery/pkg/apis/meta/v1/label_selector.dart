// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
class LabelSelector {
  /// Default constructor.
  const LabelSelector({
    this.matchExpressions,
    this.matchLabels = const {},
  });

  /// Creates a [LabelSelector] from JSON data.
  factory LabelSelector.fromJson(Map<String, dynamic> json) {
    final tempMatchExpressionsJson = json['matchExpressions'];
    final tempMatchLabelsJson = json['matchLabels'];

    final tempMatchExpressions = tempMatchExpressionsJson;
    final tempMatchLabels = tempMatchLabelsJson;

    return LabelSelector(
      matchExpressions: tempMatchExpressions,
      matchLabels: tempMatchLabels,
    );
  }

  /// matchExpressions is a list of label selector requirements. The requirements are ANDed.
  final List<LabelSelectorRequirement>? matchExpressions;

  /// matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
  final Map<String, String> matchLabels;

  /// Converts a [LabelSelector] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMatchExpressions = matchExpressions;
    final tempMatchLabels = matchLabels;

    if (tempMatchExpressions != null) {
      jsonData['matchExpressions'] = tempMatchExpressions;
    }

    jsonData['matchLabels'] = tempMatchLabels;

    return jsonData;
  }
}
