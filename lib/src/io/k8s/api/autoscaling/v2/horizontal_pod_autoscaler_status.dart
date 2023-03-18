// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatus {
  /// Default constructor.
  const HorizontalPodAutoscalerStatus({
    this.conditions,
    this.currentMetrics,
    this.currentReplicas,
    required this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  /// Creates a [HorizontalPodAutoscalerStatus] from JSON data.
  factory HorizontalPodAutoscalerStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];
    final tempCurrentMetricsJson = json['currentMetrics'];
    final tempCurrentReplicasJson = json['currentReplicas'];
    final tempDesiredReplicasJson = json['desiredReplicas'];
    final tempLastScaleTimeJson = json['lastScaleTime'];
    final tempObservedGenerationJson = json['observedGeneration'];

    final List<HorizontalPodAutoscalerCondition>? tempConditions =
        tempConditionsJson != null
            ? List<dynamic>.from(tempConditionsJson)
                .map(
                  (e) => HorizontalPodAutoscalerCondition.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<MetricStatus>? tempCurrentMetrics =
        tempCurrentMetricsJson != null
            ? List<dynamic>.from(tempCurrentMetricsJson)
                .map(
                  (e) => MetricStatus.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final int? tempCurrentReplicas = tempCurrentReplicasJson;
    final int tempDesiredReplicas = tempDesiredReplicasJson;
    final DateTime? tempLastScaleTime = tempLastScaleTimeJson != null
        ? DateTime.tryParse(tempLastScaleTimeJson)
        : null;
    final int? tempObservedGeneration = tempObservedGenerationJson;

    return HorizontalPodAutoscalerStatus(
      conditions: tempConditions,
      currentMetrics: tempCurrentMetrics,
      currentReplicas: tempCurrentReplicas,
      desiredReplicas: tempDesiredReplicas,
      lastScaleTime: tempLastScaleTime,
      observedGeneration: tempObservedGeneration,
    );
  }

  /// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  final List<HorizontalPodAutoscalerCondition>? conditions;

  /// currentMetrics is the last read state of the metrics used by this autoscaler.
  final List<MetricStatus>? currentMetrics;

  /// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  final int? currentReplicas;

  /// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  final int desiredReplicas;

  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
  final DateTime? lastScaleTime;

  /// observedGeneration is the most recent generation observed by this autoscaler.
  final int? observedGeneration;

  /// Converts a [HorizontalPodAutoscalerStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditions = conditions;
    final tempCurrentMetrics = currentMetrics;
    final tempCurrentReplicas = currentReplicas;
    final tempDesiredReplicas = desiredReplicas;
    final tempLastScaleTime = lastScaleTime;
    final tempObservedGeneration = observedGeneration;

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    if (tempCurrentMetrics != null) {
      jsonData['currentMetrics'] = tempCurrentMetrics;
    }

    if (tempCurrentReplicas != null) {
      jsonData['currentReplicas'] = tempCurrentReplicas;
    }

    jsonData['desiredReplicas'] = tempDesiredReplicas;

    if (tempLastScaleTime != null) {
      jsonData['lastScaleTime'] = tempLastScaleTime;
    }

    if (tempObservedGeneration != null) {
      jsonData['observedGeneration'] = tempObservedGeneration;
    }

    return jsonData;
  }
}
