import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/metric_spec.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/cross_version_object_reference.dart';

/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
class HorizontalPodAutoscalerSpec {
  /// The main constructor.
  const HorizontalPodAutoscalerSpec({
    required this.maxReplicas,
    this.metrics,
    this.minReplicas,
    required this.scaleTargetRef,
  });

  /// Creates a HorizontalPodAutoscalerSpec from JSON data.
  HorizontalPodAutoscalerSpec.fromJson(Map<String, dynamic> json)
      : this(
          maxReplicas: json['maxReplicas'],
          metrics: json['metrics'] != null
              ? MetricSpec.listFromJson(
                  (json['metrics'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          minReplicas: json['minReplicas'],
          scaleTargetRef:
              CrossVersionObjectReference.fromJson(json['scaleTargetRef']),
        );

  /// Creates a list of HorizontalPodAutoscalerSpec from JSON data.
  static List<HorizontalPodAutoscalerSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HorizontalPodAutoscalerSpec.fromJson(e)).toList();
  }

  /// MaxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  final int maxReplicas;

  /// Metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond.
  final List<MetricSpec>? metrics;

  /// MinReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  final int? minReplicas;

  /// ScaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
  final CrossVersionObjectReference scaleTargetRef;
}
