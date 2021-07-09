import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole.
class AggregationRule {
  /// The main constructor.
  const AggregationRule({
    this.clusterRoleSelectors,
  });

  /// Creates a AggregationRule from JSON data.
  AggregationRule.fromJson(Map<String, dynamic> json)
      : this(
          clusterRoleSelectors: json['clusterRoleSelectors'] != null
              ? LabelSelector.listFromJson(
                  (json['clusterRoleSelectors'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of AggregationRule from JSON data.
  static List<AggregationRule> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AggregationRule.fromJson(e)).toList();
  }

  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added.
  final List<LabelSelector>? clusterRoleSelectors;
}
