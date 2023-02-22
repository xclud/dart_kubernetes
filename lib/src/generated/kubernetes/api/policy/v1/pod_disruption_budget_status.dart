import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/condition.dart';

/// PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
class PodDisruptionBudgetStatus {
  /// The main constructor.
  const PodDisruptionBudgetStatus({
    this.conditions,
    required this.currentHealthy,
    required this.desiredHealthy,
    this.disruptedPods,
    required this.disruptionsAllowed,
    required this.expectedPods,
    this.observedGeneration,
  });

  /// Creates a PodDisruptionBudgetStatus from JSON data.
  PodDisruptionBudgetStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null ? Condition.listFromJson((json['conditions'] as Iterable).cast<Map<String, dynamic>>()): null,
          currentHealthy: json['currentHealthy'],
          desiredHealthy: json['desiredHealthy'],
          disruptedPods: json['disruptedPods'] != null ? Map<String, DateTime>.from(json['disruptedPods']) : null,
          disruptionsAllowed: json['disruptionsAllowed'],
          expectedPods: json['expectedPods'],
          observedGeneration: json['observedGeneration'],
        );

  /// Creates a list of PodDisruptionBudgetStatus from JSON data.
  static List<PodDisruptionBudgetStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodDisruptionBudgetStatus.fromJson(e)).toList();
  }

  /// Converts a PodDisruptionBudgetStatus instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(conditions != null) { jsonData['conditions'] = conditions!.map((item) => item.toJson()).toList(); }
    jsonData['currentHealthy'] = currentHealthy;
    jsonData['desiredHealthy'] = desiredHealthy;
    if(disruptedPods != null) { jsonData['disruptedPods'] = disruptedPods!; }
    jsonData['disruptionsAllowed'] = disruptionsAllowed;
    jsonData['expectedPods'] = expectedPods;
    if(observedGeneration != null) { jsonData['observedGeneration'] = observedGeneration!; }
    

    return jsonData;
  }


  /// Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute
///               the number of allowed disruptions. Therefore no disruptions are
///               allowed and the status of the condition will be False.
/// - InsufficientPods: The number of pods are either at or below the number
///                     required by the PodDisruptionBudget. No disruptions are
///                     allowed and the status of the condition will be False.
/// - SufficientPods: There are more pods than required by the PodDisruptionBudget.
///                   The condition will be True, and the number of allowed
///                   disruptions are provided by the disruptionsAllowed property.
  final List<Condition>? conditions;

  /// Current number of healthy pods.
  final int currentHealthy;

  /// Minimum desired number of healthy pods.
  final int desiredHealthy;

  /// DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
  final Map<String, DateTime>? disruptedPods;

  /// Number of pod disruptions that are currently allowed.
  final int disruptionsAllowed;

  /// Total number of pods counted by this disruption budget.
  final int expectedPods;

  /// Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
  final int? observedGeneration;
}
