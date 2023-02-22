import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v1/cross_version_object_reference.dart';

/// Specification of a horizontal pod autoscaler.
class HorizontalPodAutoscalerSpec {
  /// The main constructor.
  const HorizontalPodAutoscalerSpec({
    required this.maxReplicas,
    this.minReplicas,
    required this.scaleTargetRef,
    this.targetCPUUtilizationPercentage,
  });

  /// Creates a HorizontalPodAutoscalerSpec from JSON data.
  HorizontalPodAutoscalerSpec.fromJson(Map<String, dynamic> json)
      : this(
          maxReplicas: json['maxReplicas'],
          minReplicas: json['minReplicas'],
          scaleTargetRef:
              CrossVersionObjectReference.fromJson(json['scaleTargetRef']),
          targetCPUUtilizationPercentage:
              json['targetCPUUtilizationPercentage'],
        );

  /// Creates a list of HorizontalPodAutoscalerSpec from JSON data.
  static List<HorizontalPodAutoscalerSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HorizontalPodAutoscalerSpec.fromJson(e)).toList();
  }

  /// Converts a HorizontalPodAutoscalerSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['maxReplicas'] = maxReplicas;
    if (minReplicas != null) {
      jsonData['minReplicas'] = minReplicas!;
    }
    jsonData['scaleTargetRef'] = scaleTargetRef.toJson();
    if (targetCPUUtilizationPercentage != null) {
      jsonData['targetCPUUtilizationPercentage'] =
          targetCPUUtilizationPercentage!;
    }

    return jsonData;
  }

  /// Upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
  final int maxReplicas;

  /// MinReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final int? minReplicas;

  /// Reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
  final CrossVersionObjectReference scaleTargetRef;

  /// Target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
  final int? targetCPUUtilizationPercentage;
}
