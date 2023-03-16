// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.policy.v1;

/// PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
class PodDisruptionBudgetStatus {
  /// Default constructor.
  const PodDisruptionBudgetStatus({
    this.conditions,
    required this.currentHealthy,
    required this.desiredHealthy,
    this.disruptedPods = const {},
    required this.disruptionsAllowed,
    required this.expectedPods,
    this.observedGeneration,
  });

  /// Creates a [PodDisruptionBudgetStatus] from JSON data.
  factory PodDisruptionBudgetStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];
    final tempCurrentHealthyJson = json['currentHealthy'];
    final tempDesiredHealthyJson = json['desiredHealthy'];
    final tempDisruptedPodsJson = json['disruptedPods'];
    final tempDisruptionsAllowedJson = json['disruptionsAllowed'];
    final tempExpectedPodsJson = json['expectedPods'];
    final tempObservedGenerationJson = json['observedGeneration'];

    final List<Condition>? tempConditions = tempConditionsJson;
    final int tempCurrentHealthy = tempCurrentHealthyJson;
    final int tempDesiredHealthy = tempDesiredHealthyJson;
    final Map<String, Object> tempDisruptedPods = tempDisruptedPodsJson;
    final int tempDisruptionsAllowed = tempDisruptionsAllowedJson;
    final int tempExpectedPods = tempExpectedPodsJson;
    final int? tempObservedGeneration = tempObservedGenerationJson;

    return PodDisruptionBudgetStatus(
      conditions: tempConditions,
      currentHealthy: tempCurrentHealthy,
      desiredHealthy: tempDesiredHealthy,
      disruptedPods: tempDisruptedPods,
      disruptionsAllowed: tempDisruptionsAllowed,
      expectedPods: tempExpectedPods,
      observedGeneration: tempObservedGeneration,
    );
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

  /// current number of healthy pods.
  final int currentHealthy;

  /// minimum desired number of healthy pods.
  final int desiredHealthy;

  /// DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
  final Map<String, Object> disruptedPods;

  /// Number of pod disruptions that are currently allowed.
  final int disruptionsAllowed;

  /// total number of pods counted by this disruption budget.
  final int expectedPods;

  /// Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
  final int? observedGeneration;

  /// Converts a [PodDisruptionBudgetStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditions = conditions;
    final tempCurrentHealthy = currentHealthy;
    final tempDesiredHealthy = desiredHealthy;
    final tempDisruptedPods = disruptedPods;
    final tempDisruptionsAllowed = disruptionsAllowed;
    final tempExpectedPods = expectedPods;
    final tempObservedGeneration = observedGeneration;

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    jsonData['currentHealthy'] = tempCurrentHealthy;

    jsonData['desiredHealthy'] = tempDesiredHealthy;

    jsonData['disruptedPods'] = tempDisruptedPods;

    jsonData['disruptionsAllowed'] = tempDisruptionsAllowed;

    jsonData['expectedPods'] = tempExpectedPods;

    if (tempObservedGeneration != null) {
      jsonData['observedGeneration'] = tempObservedGeneration;
    }

    return jsonData;
  }
}
