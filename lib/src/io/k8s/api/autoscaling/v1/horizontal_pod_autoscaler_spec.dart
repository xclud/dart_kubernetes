// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v1;

/// specification of a horizontal pod autoscaler.
class HorizontalPodAutoscalerSpec {
  /// Default constructor.
  const HorizontalPodAutoscalerSpec({
    required this.maxReplicas,
    this.minReplicas,
    required this.scaleTargetRef,
    this.targetCPUUtilizationPercentage,
  });

  /// Creates a [HorizontalPodAutoscalerSpec] from JSON data.
  factory HorizontalPodAutoscalerSpec.fromJson(Map<String, dynamic> json) {
    final tempMaxReplicasJson = json['maxReplicas'];
    final tempMinReplicasJson = json['minReplicas'];
    final tempScaleTargetRefJson = json['scaleTargetRef'];
    final tempTargetCPUUtilizationPercentageJson =
        json['targetCPUUtilizationPercentage'];

    final int tempMaxReplicas = tempMaxReplicasJson;
    final int? tempMinReplicas = tempMinReplicasJson;
    final CrossVersionObjectReference tempScaleTargetRef =
        CrossVersionObjectReference.fromJson(tempScaleTargetRefJson);
    final int? tempTargetCPUUtilizationPercentage =
        tempTargetCPUUtilizationPercentageJson;

    return HorizontalPodAutoscalerSpec(
      maxReplicas: tempMaxReplicas,
      minReplicas: tempMinReplicas,
      scaleTargetRef: tempScaleTargetRef,
      targetCPUUtilizationPercentage: tempTargetCPUUtilizationPercentage,
    );
  }

  /// maxReplicas is the upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
  final int maxReplicas;

  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final int? minReplicas;

  /// reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
  final CrossVersionObjectReference scaleTargetRef;

  /// targetCPUUtilizationPercentage is the target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
  final int? targetCPUUtilizationPercentage;

  /// Converts a [HorizontalPodAutoscalerSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMaxReplicas = maxReplicas;
    final tempMinReplicas = minReplicas;
    final tempScaleTargetRef = scaleTargetRef;
    final tempTargetCPUUtilizationPercentage = targetCPUUtilizationPercentage;

    jsonData['maxReplicas'] = tempMaxReplicas;

    if (tempMinReplicas != null) {
      jsonData['minReplicas'] = tempMinReplicas;
    }

    jsonData['scaleTargetRef'] = tempScaleTargetRef.toJson();

    if (tempTargetCPUUtilizationPercentage != null) {
      jsonData['targetCPUUtilizationPercentage'] =
          tempTargetCPUUtilizationPercentage;
    }

    return jsonData;
  }
}
