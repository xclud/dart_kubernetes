import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/horizontal_pod_autoscaler_condition.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/metric_status.dart';

/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatus {
  /// The main constructor.
  const HorizontalPodAutoscalerStatus({
    required this.conditions,
    this.currentMetrics,
    required this.currentReplicas,
    required this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  /// Creates a HorizontalPodAutoscalerStatus from JSON data.
  HorizontalPodAutoscalerStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null
              ? HorizontalPodAutoscalerCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          currentMetrics: json['currentMetrics'] != null
              ? MetricStatus.listFromJson((json['currentMetrics'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : null,
          currentReplicas: json['currentReplicas'],
          desiredReplicas: json['desiredReplicas'],
          lastScaleTime: json['lastScaleTime'] != null
              ? DateTime.tryParse(json['lastScaleTime'])
              : null,
          observedGeneration: json['observedGeneration'],
        );

  /// Creates a list of HorizontalPodAutoscalerStatus from JSON data.
  static List<HorizontalPodAutoscalerStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HorizontalPodAutoscalerStatus.fromJson(e)).toList();
  }

  /// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  final List<HorizontalPodAutoscalerCondition> conditions;

  /// currentMetrics is the last read state of the metrics used by this autoscaler.
  final List<MetricStatus>? currentMetrics;

  /// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  final int currentReplicas;

  /// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  final int desiredReplicas;

  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  final DateTime? lastScaleTime;

  /// observedGeneration is the most recent generation observed by this autoscaler.
  final int? observedGeneration;
}
