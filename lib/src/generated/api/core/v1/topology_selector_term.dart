import 'package:kubernetes/src/generated/api/core/v1/topology_selector_label_requirement.dart';

/// A topology selector term represents the result of label queries. A null or empty topology selector term matches no objects. The requirements of them are ANDed. It provides a subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in the future.
class TopologySelectorTerm {
  /// The main constructor.
  const TopologySelectorTerm({
    this.matchLabelExpressions,
  });

  /// Creates a TopologySelectorTerm from JSON data.
  TopologySelectorTerm.fromJson(Map<String, dynamic> json)
      : this(
          matchLabelExpressions: json['matchLabelExpressions'] != null
              ? TopologySelectorLabelRequirement.listFromJson(
                  (json['matchLabelExpressions'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of TopologySelectorTerm from JSON data.
  static List<TopologySelectorTerm> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TopologySelectorTerm.fromJson(e)).toList();
  }

  /// Converts a TopologySelectorTerm instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (matchLabelExpressions != null) {
      jsonData['matchLabelExpressions'] =
          matchLabelExpressions!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// A list of topology selector requirements by labels.
  final List<TopologySelectorLabelRequirement>? matchLabelExpressions;
}
