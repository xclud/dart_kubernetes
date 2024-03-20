// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
class HorizontalPodAutoscalerSpec {
  /// Default constructor.
  const HorizontalPodAutoscalerSpec({
    this.behavior,
    required this.maxReplicas,
    this.metrics,
    this.minReplicas,
    required this.scaleTargetRef,
  });

  /// Creates a [HorizontalPodAutoscalerSpec] from JSON data.
  factory HorizontalPodAutoscalerSpec.fromJson(Map<String, dynamic> json) {
    final tempBehaviorJson = json['behavior'];
    final tempMaxReplicasJson = json['maxReplicas'];
    final tempMetricsJson = json['metrics'];
    final tempMinReplicasJson = json['minReplicas'];
    final tempScaleTargetRefJson = json['scaleTargetRef'];

    final HorizontalPodAutoscalerBehavior? tempBehavior =
        tempBehaviorJson != null
            ? HorizontalPodAutoscalerBehavior.fromJson(tempBehaviorJson)
            : null;
    final int tempMaxReplicas = tempMaxReplicasJson;

    final List<MetricSpec>? tempMetrics = tempMetricsJson != null
        ? List<dynamic>.from(tempMetricsJson)
            .map(
              (e) => MetricSpec.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final int? tempMinReplicas = tempMinReplicasJson;
    final CrossVersionObjectReference tempScaleTargetRef =
        CrossVersionObjectReference.fromJson(tempScaleTargetRefJson);

    return HorizontalPodAutoscalerSpec(
      behavior: tempBehavior,
      maxReplicas: tempMaxReplicas,
      metrics: tempMetrics,
      minReplicas: tempMinReplicas,
      scaleTargetRef: tempScaleTargetRef,
    );
  }

  /// behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
  final HorizontalPodAutoscalerBehavior? behavior;

  /// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  final int maxReplicas;

  /// metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
  final List<MetricSpec>? metrics;

  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final int? minReplicas;

  /// scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  final CrossVersionObjectReference scaleTargetRef;

  /// Converts a [HorizontalPodAutoscalerSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempBehavior = behavior;
    final tempMaxReplicas = maxReplicas;
    final tempMetrics = metrics;
    final tempMinReplicas = minReplicas;
    final tempScaleTargetRef = scaleTargetRef;

    if (tempBehavior != null) {
      jsonData['behavior'] = tempBehavior.toJson();
    }

    jsonData['maxReplicas'] = tempMaxReplicas;

    if (tempMetrics != null) {
      jsonData['metrics'] =
          tempMetrics.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempMinReplicas != null) {
      jsonData['minReplicas'] = tempMinReplicas;
    }

    jsonData['scaleTargetRef'] = tempScaleTargetRef.toJson();

    return jsonData;
  }
}
