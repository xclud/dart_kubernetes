import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/hpa_scaling_policy.dart';

/// HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
class HPAScalingRules {
  /// The main constructor.
  const HPAScalingRules({
    this.policies,
    this.selectPolicy,
    this.stabilizationWindowSeconds,
  });

  /// Creates a HPAScalingRules from JSON data.
  HPAScalingRules.fromJson(Map<String, dynamic> json)
      : this(
          policies: json['policies'] != null
              ? HPAScalingPolicy.listFromJson(
                  (json['policies'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          selectPolicy: json['selectPolicy'],
          stabilizationWindowSeconds: json['stabilizationWindowSeconds'],
        );

  /// Creates a list of HPAScalingRules from JSON data.
  static List<HPAScalingRules> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HPAScalingRules.fromJson(e)).toList();
  }

  /// policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
  final List<HPAScalingPolicy>? policies;

  /// selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.
  final String? selectPolicy;

  /// StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
  final int? stabilizationWindowSeconds;
}
