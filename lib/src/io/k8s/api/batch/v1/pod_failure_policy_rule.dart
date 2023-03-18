// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.batch.v1;

/// PodFailurePolicyRule describes how a pod failure is handled when the requirements are met. One of onExitCodes and onPodConditions, but not both, can be used in each rule.
class PodFailurePolicyRule {
  /// Default constructor.
  const PodFailurePolicyRule({
    required this.action,
    this.onExitCodes,
    required this.onPodConditions,
  });

  /// Creates a [PodFailurePolicyRule] from JSON data.
  factory PodFailurePolicyRule.fromJson(Map<String, dynamic> json) {
    final tempActionJson = json['action'];
    final tempOnExitCodesJson = json['onExitCodes'];
    final tempOnPodConditionsJson = json['onPodConditions'];

    final String tempAction = tempActionJson;
    final PodFailurePolicyOnExitCodesRequirement? tempOnExitCodes =
        tempOnExitCodesJson != null
            ? PodFailurePolicyOnExitCodesRequirement.fromJson(
                tempOnExitCodesJson)
            : null;

    final List<PodFailurePolicyOnPodConditionsPattern> tempOnPodConditions =
        List<dynamic>.from(tempOnPodConditionsJson)
            .map((e) => PodFailurePolicyOnPodConditionsPattern.fromJson(
                Map<String, dynamic>.from(e)))
            .toList();

    return PodFailurePolicyRule(
      action: tempAction,
      onExitCodes: tempOnExitCodes,
      onPodConditions: tempOnPodConditions,
    );
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

  /// Converts a [PodFailurePolicyRule] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAction = action;
    final tempOnExitCodes = onExitCodes;
    final tempOnPodConditions = onPodConditions;

    jsonData['action'] = tempAction;

    if (tempOnExitCodes != null) {
      jsonData['onExitCodes'] = tempOnExitCodes.toJson();
    }

    jsonData['onPodConditions'] = tempOnPodConditions;

    return jsonData;
  }
}
