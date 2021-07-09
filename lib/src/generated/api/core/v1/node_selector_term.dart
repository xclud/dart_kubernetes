import 'package:kubernetes/src/generated/api/core/v1/node_selector_requirement.dart';

/// A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
class NodeSelectorTerm {
  /// The main constructor.
  const NodeSelectorTerm({
    this.matchExpressions,
    this.matchFields,
  });

  /// Creates a NodeSelectorTerm from JSON data.
  NodeSelectorTerm.fromJson(Map<String, dynamic> json)
      : this(
          matchExpressions: json['matchExpressions'] != null
              ? NodeSelectorRequirement.listFromJson(
                  (json['matchExpressions'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          matchFields: json['matchFields'] != null
              ? NodeSelectorRequirement.listFromJson(
                  (json['matchFields'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of NodeSelectorTerm from JSON data.
  static List<NodeSelectorTerm> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeSelectorTerm.fromJson(e)).toList();
  }

  /// Converts a NodeSelectorTerm instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (matchExpressions != null) {
      jsonData['matchExpressions'] =
          matchExpressions!.map((item) => item.toJson()).toList();
    }
    if (matchFields != null) {
      jsonData['matchFields'] =
          matchFields!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// A list of node selector requirements by node's labels.
  final List<NodeSelectorRequirement>? matchExpressions;

  /// A list of node selector requirements by node's fields.
  final List<NodeSelectorRequirement>? matchFields;
}
