// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../apps_v1.dart';

/// DeploymentStatus is the most recently observed status of the Deployment.
class DeploymentStatus {
  /// Default constructor.
  const DeploymentStatus({
    this.availableReplicas,
    this.collisionCount,
    this.conditions,
    this.observedGeneration,
    this.readyReplicas,
    this.replicas,
    this.unavailableReplicas,
    this.updatedReplicas,
  });

  /// Creates a [DeploymentStatus] from JSON data.
  factory DeploymentStatus.fromJson(Map<String, dynamic> json) {
    final tempAvailableReplicasJson = json['availableReplicas'];
    final tempCollisionCountJson = json['collisionCount'];
    final tempConditionsJson = json['conditions'];
    final tempObservedGenerationJson = json['observedGeneration'];
    final tempReadyReplicasJson = json['readyReplicas'];
    final tempReplicasJson = json['replicas'];
    final tempUnavailableReplicasJson = json['unavailableReplicas'];
    final tempUpdatedReplicasJson = json['updatedReplicas'];

    final int? tempAvailableReplicas = tempAvailableReplicasJson;
    final int? tempCollisionCount = tempCollisionCountJson;

    final List<DeploymentCondition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => DeploymentCondition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final int? tempObservedGeneration = tempObservedGenerationJson;
    final int? tempReadyReplicas = tempReadyReplicasJson;
    final int? tempReplicas = tempReplicasJson;
    final int? tempUnavailableReplicas = tempUnavailableReplicasJson;
    final int? tempUpdatedReplicas = tempUpdatedReplicasJson;

    return DeploymentStatus(
      availableReplicas: tempAvailableReplicas,
      collisionCount: tempCollisionCount,
      conditions: tempConditions,
      observedGeneration: tempObservedGeneration,
      readyReplicas: tempReadyReplicas,
      replicas: tempReplicas,
      unavailableReplicas: tempUnavailableReplicas,
      updatedReplicas: tempUpdatedReplicas,
    );
  }

  /// Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
  final int? availableReplicas;

  /// Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  final int? collisionCount;

  /// Represents the latest available observations of a deployment's current state.
  final List<DeploymentCondition>? conditions;

  /// The generation observed by the deployment controller.
  final int? observedGeneration;

  /// readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.
  final int? readyReplicas;

  /// Total number of non-terminated pods targeted by this deployment (their labels match the selector).
  final int? replicas;

  /// Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  final int? unavailableReplicas;

  /// Total number of non-terminated pods targeted by this deployment that have the desired template spec.
  final int? updatedReplicas;

  /// Converts a [DeploymentStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAvailableReplicas = availableReplicas;
    final tempCollisionCount = collisionCount;
    final tempConditions = conditions;
    final tempObservedGeneration = observedGeneration;
    final tempReadyReplicas = readyReplicas;
    final tempReplicas = replicas;
    final tempUnavailableReplicas = unavailableReplicas;
    final tempUpdatedReplicas = updatedReplicas;

    if (tempAvailableReplicas != null) {
      jsonData['availableReplicas'] = tempAvailableReplicas;
    }

    if (tempCollisionCount != null) {
      jsonData['collisionCount'] = tempCollisionCount;
    }

    if (tempConditions != null) {
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempObservedGeneration != null) {
      jsonData['observedGeneration'] = tempObservedGeneration;
    }

    if (tempReadyReplicas != null) {
      jsonData['readyReplicas'] = tempReadyReplicas;
    }

    if (tempReplicas != null) {
      jsonData['replicas'] = tempReplicas;
    }

    if (tempUnavailableReplicas != null) {
      jsonData['unavailableReplicas'] = tempUnavailableReplicas;
    }

    if (tempUpdatedReplicas != null) {
      jsonData['updatedReplicas'] = tempUpdatedReplicas;
    }

    return jsonData;
  }
}
