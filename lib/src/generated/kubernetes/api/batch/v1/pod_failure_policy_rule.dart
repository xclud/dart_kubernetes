import 'package:kubernetes/src/generated/kubernetes/api/batch/v1/pod_failure_policy_on_exit_codes_requirement.dart';
import 'package:kubernetes/src/generated/kubernetes/api/batch/v1/pod_failure_policy_on_pod_conditions_pattern.dart';

/// PodFailurePolicyRule describes how a pod failure is handled when the requirements are met. One of onExitCodes and onPodConditions, but not both, can be used in each rule.
class PodFailurePolicyRule {
  /// The main constructor.
  const PodFailurePolicyRule({
    required this.action,
    this.onExitCodes,
    required this.onPodConditions,
  });

  /// Creates a PodFailurePolicyRule from JSON data.
  PodFailurePolicyRule.fromJson(Map<String, dynamic> json)
      : this(
          action: json['action'],
          onExitCodes: json['onExitCodes'] != null
              ? PodFailurePolicyOnExitCodesRequirement.fromJson(
                  json['onExitCodes'])
              : null,
          onPodConditions: json['onPodConditions'] != null
              ? PodFailurePolicyOnPodConditionsPattern.listFromJson(
                  (json['onPodConditions'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of PodFailurePolicyRule from JSON data.
  static List<PodFailurePolicyRule> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodFailurePolicyRule.fromJson(e)).toList();
  }

  /// Converts a PodFailurePolicyRule instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['action'] = action;
    if (onExitCodes != null) {
      jsonData['onExitCodes'] = onExitCodes!.toJson();
    }
    jsonData['onPodConditions'] =
        onPodConditions.map((item) => item.toJson()).toList();

    return jsonData;
  }

  /// Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are:
  ///
  /// - FailJob: indicates that the pod's job is marked as Failed and all
  ///   running pods are terminated.
  /// - Ignore: indicates that the counter towards the .backoffLimit is not
  ///   incremented and a replacement pod is created.
  /// - Count: indicates that the pod is handled in the default way - the
  ///   counter towards the .backoffLimit is incremented.
  /// Additional values are considered to be added in the future. Clients should react to an unknown action by skipping the rule.
  final String action;

  /// Represents the requirement on the container exit codes.
  final PodFailurePolicyOnExitCodesRequirement? onExitCodes;

  /// Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
  final List<PodFailurePolicyOnPodConditionsPattern> onPodConditions;
}
