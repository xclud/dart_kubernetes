// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// A topology selector term represents the result of label queries. A null or empty topology selector term matches no objects. The requirements of them are ANDed. It provides a subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in the future.
class TopologySelectorTerm {
  /// Default constructor.
  const TopologySelectorTerm({
    this.matchLabelExpressions,
  });

  /// Creates a [TopologySelectorTerm] from JSON data.
  factory TopologySelectorTerm.fromJson(Map<String, dynamic> json) {
    final tempMatchLabelExpressionsJson = json['matchLabelExpressions'];

    final List<TopologySelectorLabelRequirement>? tempMatchLabelExpressions =
        tempMatchLabelExpressionsJson != null
            ? List<dynamic>.from(tempMatchLabelExpressionsJson)
                .map((e) => TopologySelectorLabelRequirement.fromJson(
                    Map<String, dynamic>.from(e)))
                .toList()
            : null;

    return TopologySelectorTerm(
      matchLabelExpressions: tempMatchLabelExpressions,
    );
  }

  /// A list of topology selector requirements by labels.
  final List<TopologySelectorLabelRequirement>? matchLabelExpressions;

  /// Converts a [TopologySelectorTerm] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMatchLabelExpressions = matchLabelExpressions;

    if (tempMatchLabelExpressions != null) {
      jsonData['matchLabelExpressions'] = tempMatchLabelExpressions;
    }

    return jsonData;
  }
}
