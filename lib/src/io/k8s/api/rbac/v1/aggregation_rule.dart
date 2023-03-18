// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.rbac.v1;

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole.
class AggregationRule {
  /// Default constructor.
  const AggregationRule({
    this.clusterRoleSelectors,
  });

  /// Creates a [AggregationRule] from JSON data.
  factory AggregationRule.fromJson(Map<String, dynamic> json) {
    final tempClusterRoleSelectorsJson = json['clusterRoleSelectors'];

    final List<LabelSelector>? tempClusterRoleSelectors =
        tempClusterRoleSelectorsJson != null
            ? List<dynamic>.from(tempClusterRoleSelectorsJson)
                .map(
                  (e) => LabelSelector.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return AggregationRule(
      clusterRoleSelectors: tempClusterRoleSelectors,
    );
  }

  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added.
  final List<LabelSelector>? clusterRoleSelectors;

  /// Converts a [AggregationRule] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempClusterRoleSelectors = clusterRoleSelectors;

    if (tempClusterRoleSelectors != null) {
      jsonData['clusterRoleSelectors'] = tempClusterRoleSelectors;
    }

    return jsonData;
  }
}
