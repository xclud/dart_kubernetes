import 'package:kubernetes/src/generated/kubernetes/api/batch/v1/pod_failure_policy_rule.dart';

/// PodFailurePolicy describes how failed pods influence the backoffLimit.
class PodFailurePolicy {
  /// The main constructor.
  const PodFailurePolicy({
    required this.rules,
  });

  /// Creates a PodFailurePolicy from JSON data.
  PodFailurePolicy.fromJson(Map<String, dynamic> json)
      : this(
          rules: json['rules'] != null
              ? PodFailurePolicyRule.listFromJson(
                  (json['rules'] as Iterable).cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of PodFailurePolicy from JSON data.
  static List<PodFailurePolicy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodFailurePolicy.fromJson(e)).toList();
  }

  /// Converts a PodFailurePolicy instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['rules'] = rules.map((item) => item.toJson()).toList();

    return jsonData;
  }

  /// A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
  final List<PodFailurePolicyRule> rules;
}
