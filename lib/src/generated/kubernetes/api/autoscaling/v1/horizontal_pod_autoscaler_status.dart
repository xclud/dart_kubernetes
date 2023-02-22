
/// Current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatus {
  /// The main constructor.
  const HorizontalPodAutoscalerStatus({
    this.currentCPUUtilizationPercentage,
    required this.currentReplicas,
    required this.desiredReplicas,
    this.lastScaleTime,
    this.observedGeneration,
  });

  /// Creates a HorizontalPodAutoscalerStatus from JSON data.
  HorizontalPodAutoscalerStatus.fromJson(Map<String, dynamic> json)
      : this(
          currentCPUUtilizationPercentage: json['currentCPUUtilizationPercentage'],
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

    if(currentCPUUtilizationPercentage != null) { jsonData['currentCPUUtilizationPercentage'] = currentCPUUtilizationPercentage!; }
    jsonData['currentReplicas'] = currentReplicas;
    jsonData['desiredReplicas'] = desiredReplicas;
    if(lastScaleTime != null) { jsonData['lastScaleTime'] = lastScaleTime!.toIso8601String(); }
    if(observedGeneration != null) { jsonData['observedGeneration'] = observedGeneration!; }
    

    return jsonData;
  }


  /// Current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
  final int? currentCPUUtilizationPercentage;

  /// Current number of replicas of pods managed by this autoscaler.
  final int currentReplicas;

  /// Desired number of replicas of pods managed by this autoscaler.
  final int desiredReplicas;

  /// Last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
  final DateTime? lastScaleTime;

  /// Most recent generation observed by this autoscaler.
  final int? observedGeneration;
}
