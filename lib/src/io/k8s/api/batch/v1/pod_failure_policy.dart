// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.batch.v1;

/// PodFailurePolicy describes how failed pods influence the backoffLimit.
class PodFailurePolicy {
  /// Default constructor.
  const PodFailurePolicy({
    required this.rules,
  });

  /// Creates a [PodFailurePolicy] from JSON data.
  factory PodFailurePolicy.fromJson(Map<String, dynamic> json) {
    final tempRulesJson = json['rules'];

    final List<PodFailurePolicyRule> tempRules =
        List<dynamic>.from(tempRulesJson)
            .map(
              (e) => PodFailurePolicyRule.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList();

    return PodFailurePolicy(
      rules: tempRules,
    );
  }

  /// A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
  final List<PodFailurePolicyRule> rules;

  /// Converts a [PodFailurePolicy] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempRules = rules;

    jsonData['rules'] =
        tempRules.map((e) => e.toJson()).toList(growable: false);

    return jsonData;
  }
}
