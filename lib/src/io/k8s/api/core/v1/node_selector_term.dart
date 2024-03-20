// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
class NodeSelectorTerm {
  /// Default constructor.
  const NodeSelectorTerm({
    this.matchExpressions,
    this.matchFields,
  });

  /// Creates a [NodeSelectorTerm] from JSON data.
  factory NodeSelectorTerm.fromJson(Map<String, dynamic> json) {
    final tempMatchExpressionsJson = json['matchExpressions'];
    final tempMatchFieldsJson = json['matchFields'];

    final List<NodeSelectorRequirement>? tempMatchExpressions =
        tempMatchExpressionsJson != null
            ? List<dynamic>.from(tempMatchExpressionsJson)
                .map(
                  (e) => NodeSelectorRequirement.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<NodeSelectorRequirement>? tempMatchFields =
        tempMatchFieldsJson != null
            ? List<dynamic>.from(tempMatchFieldsJson)
                .map(
                  (e) => NodeSelectorRequirement.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return NodeSelectorTerm(
      matchExpressions: tempMatchExpressions,
      matchFields: tempMatchFields,
    );
  }

  /// A list of node selector requirements by node's labels.
  final List<NodeSelectorRequirement>? matchExpressions;

  /// A list of node selector requirements by node's fields.
  final List<NodeSelectorRequirement>? matchFields;

  /// Converts a [NodeSelectorTerm] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMatchExpressions = matchExpressions;
    final tempMatchFields = matchFields;

    if (tempMatchExpressions != null) {
      jsonData['matchExpressions'] =
          tempMatchExpressions.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempMatchFields != null) {
      jsonData['matchFields'] =
          tempMatchFields.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
