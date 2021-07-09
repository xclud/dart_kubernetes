import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector_requirement.dart';

/// A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
class LabelSelector {
  /// The main constructor.
  const LabelSelector({
    this.matchExpressions,
    this.matchLabels,
  });

  /// Creates a LabelSelector from JSON data.
  LabelSelector.fromJson(Map<String, dynamic> json)
      : this(
          matchExpressions: json['matchExpressions'] != null
              ? LabelSelectorRequirement.listFromJson(
                  (json['matchExpressions'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          matchLabels: json['matchLabels'] != null
              ? Map<String, String>.from(json['matchLabels'])
              : null,
        );

  /// Creates a list of LabelSelector from JSON data.
  static List<LabelSelector> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LabelSelector.fromJson(e)).toList();
  }

  /// Converts a LabelSelector instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (matchExpressions != null) {
      jsonData['matchExpressions'] =
          matchExpressions!.map((item) => item.toJson()).toList();
    }
    if (matchLabels != null) {
      jsonData['matchLabels'] = matchLabels!;
    }

    return jsonData;
  }

  /// MatchExpressions is a list of label selector requirements. The requirements are ANDed.
  final List<LabelSelectorRequirement>? matchExpressions;

  /// MatchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
  final Map<String, String>? matchLabels;
}
