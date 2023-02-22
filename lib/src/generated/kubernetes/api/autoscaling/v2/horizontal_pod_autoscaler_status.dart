import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v2/horizontal_pod_autoscaler_condition.dart';
import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v2/metric_status.dart';

/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatus {
  /// The main constructor.
  const HorizontalPodAutoscalerStatus({
    this.conditions,
    this.currentMetrics,
    this.currentReplicas,
    required this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  /// Creates a HorizontalPodAutoscalerStatus from JSON data.
  HorizontalPodAutoscalerStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null ? HorizontalPodAutoscalerCondition.listFromJson((json['conditions'] as Iterable).cast<Map<String, dynamic>>()): null,
          currentMetrics: json['currentMetrics'] != null ? MetricStatus.listFromJson((json['currentMetrics'] as Iterable).cast<Map<String, dynamic>>()): null,
          currentReplicas: json['currentReplicas'],
          desiredReplicas: json['desiredReplicas'],
          lastScaleTime: json['lastScaleTime'] != null ? DateTime.tryParse(json['lastScaleTime']): null,
          observedGeneration: json['observedGeneration'],
        );

  /// Creates a list of HorizontalPodAutoscalerStatus from JSON data.
  static List<HorizontalPodAutoscalerStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HorizontalPodAutoscalerStatus.fromJson(e)).toList();
  }

  /// Converts a HorizontalPodAutoscalerStatus instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(conditions != null) { jsonData['conditions'] = conditions!.map((item) => item.toJson()).toList(); }
    if(currentMetrics != null) { jsonData['currentMetrics'] = currentMetrics!.map((item) => item.toJson()).toList(); }
    if(currentReplicas != null) { jsonData['currentReplicas'] = currentReplicas!; }
    jsonData['desiredReplicas'] = desiredReplicas;
    if(lastScaleTime != null) { jsonData['lastScaleTime'] = lastScaleTime!.toIso8601String(); }
    if(observedGeneration != null) { jsonData['observedGeneration'] = observedGeneration!; }
    

    return jsonData;
  }


  /// Conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  final List<HorizontalPodAutoscalerCondition>? conditions;

  /// CurrentMetrics is the last read state of the metrics used by this autoscaler.
  final List<MetricStatus>? currentMetrics;

  /// CurrentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  final int? currentReplicas;

  /// DesiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  final int desiredReplicas;

  /// LastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  final DateTime? lastScaleTime;

  /// ObservedGeneration is the most recent generation observed by this autoscaler.
  final int? observedGeneration;
}
