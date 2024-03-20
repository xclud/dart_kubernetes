// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

/// HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
class HPAScalingRules {
  /// Default constructor.
  const HPAScalingRules({
    this.policies,
    this.selectPolicy,
    this.stabilizationWindowSeconds,
  });

  /// Creates a [HPAScalingRules] from JSON data.
  factory HPAScalingRules.fromJson(Map<String, dynamic> json) {
    final tempPoliciesJson = json['policies'];
    final tempSelectPolicyJson = json['selectPolicy'];
    final tempStabilizationWindowSecondsJson =
        json['stabilizationWindowSeconds'];

    final List<HPAScalingPolicy>? tempPolicies = tempPoliciesJson != null
        ? List<dynamic>.from(tempPoliciesJson)
            .map(
              (e) => HPAScalingPolicy.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final String? tempSelectPolicy = tempSelectPolicyJson;
    final int? tempStabilizationWindowSeconds =
        tempStabilizationWindowSecondsJson;

    return HPAScalingRules(
      policies: tempPolicies,
      selectPolicy: tempSelectPolicy,
      stabilizationWindowSeconds: tempStabilizationWindowSeconds,
    );
  }

  /// policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid.
  final List<HPAScalingPolicy>? policies;

  /// selectPolicy is used to specify which policy should be used. If not set, the default value Max is used.
  final String? selectPolicy;

  /// stabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
  final int? stabilizationWindowSeconds;

  /// Converts a [HPAScalingRules] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPolicies = policies;
    final tempSelectPolicy = selectPolicy;
    final tempStabilizationWindowSeconds = stabilizationWindowSeconds;

    if (tempPolicies != null) {
      jsonData['policies'] =
          tempPolicies.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempSelectPolicy != null) {
      jsonData['selectPolicy'] = tempSelectPolicy;
    }

    if (tempStabilizationWindowSeconds != null) {
      jsonData['stabilizationWindowSeconds'] = tempStabilizationWindowSeconds;
    }

    return jsonData;
  }
}
