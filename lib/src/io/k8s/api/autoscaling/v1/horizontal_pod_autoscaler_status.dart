// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v1;

/// current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatus {
  /// Default constructor.
  const HorizontalPodAutoscalerStatus({
    this.currentCPUUtilizationPercentage,
    required this.currentReplicas,
    required this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  /// Creates a [HorizontalPodAutoscalerStatus] from JSON data.
  factory HorizontalPodAutoscalerStatus.fromJson(Map<String, dynamic> json) {
    final tempCurrentCPUUtilizationPercentageJson =
        json['currentCPUUtilizationPercentage'];
    final tempCurrentReplicasJson = json['currentReplicas'];
    final tempDesiredReplicasJson = json['desiredReplicas'];
    final tempLastScaleTimeJson = json['lastScaleTime'];
    final tempObservedGenerationJson = json['observedGeneration'];

    final int? tempCurrentCPUUtilizationPercentage =
        tempCurrentCPUUtilizationPercentageJson;
    final int tempCurrentReplicas = tempCurrentReplicasJson;
    final int tempDesiredReplicas = tempDesiredReplicasJson;
    final DateTime? tempLastScaleTime = tempLastScaleTimeJson != null
        ? DateTime.tryParse(tempLastScaleTimeJson)
        : null;
    final int? tempObservedGeneration = tempObservedGenerationJson;

    return HorizontalPodAutoscalerStatus(
      currentCPUUtilizationPercentage: tempCurrentCPUUtilizationPercentage,
      currentReplicas: tempCurrentReplicas,
      desiredReplicas: tempDesiredReplicas,
      lastScaleTime: tempLastScaleTime,
      observedGeneration: tempObservedGeneration,
    );
  }

  /// current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
  final int? currentCPUUtilizationPercentage;

  /// current number of replicas of pods managed by this autoscaler.
  final int currentReplicas;

  /// desired number of replicas of pods managed by this autoscaler.
  final int desiredReplicas;

  /// last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
  final DateTime? lastScaleTime;

  /// most recent generation observed by this autoscaler.
  final int? observedGeneration;

  /// Converts a [HorizontalPodAutoscalerStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCurrentCPUUtilizationPercentage = currentCPUUtilizationPercentage;
    final tempCurrentReplicas = currentReplicas;
    final tempDesiredReplicas = desiredReplicas;
    final tempLastScaleTime = lastScaleTime;
    final tempObservedGeneration = observedGeneration;

    if (tempCurrentCPUUtilizationPercentage != null) {
      jsonData['currentCPUUtilizationPercentage'] =
          tempCurrentCPUUtilizationPercentage;
    }

    jsonData['currentReplicas'] = tempCurrentReplicas;

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
