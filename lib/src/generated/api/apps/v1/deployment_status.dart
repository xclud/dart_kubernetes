import 'package:kubernetes/src/generated/api/apps/v1/deployment_condition.dart';

/// DeploymentStatus is the most recently observed status of the Deployment.
class DeploymentStatus {
  /// The main constructor.
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

  /// Creates a DeploymentStatus from JSON data.
  DeploymentStatus.fromJson(Map<String, dynamic> json)
      : this(
          availableReplicas: json['availableReplicas'],
          collisionCount: json['collisionCount'],
          conditions: json['conditions'] != null
              ? DeploymentCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          observedGeneration: json['observedGeneration'],
          readyReplicas: json['readyReplicas'],
          replicas: json['replicas'],
          unavailableReplicas: json['unavailableReplicas'],
          updatedReplicas: json['updatedReplicas'],
        );

  /// Creates a list of DeploymentStatus from JSON data.
  static List<DeploymentStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DeploymentStatus.fromJson(e)).toList();
  }

  /// Converts a DeploymentStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (availableReplicas != null) {
      jsonData['availableReplicas'] = availableReplicas!;
    }
    if (collisionCount != null) {
      jsonData['collisionCount'] = collisionCount!;
    }
    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }
    if (observedGeneration != null) {
      jsonData['observedGeneration'] = observedGeneration!;
    }
    if (readyReplicas != null) {
      jsonData['readyReplicas'] = readyReplicas!;
    }
    if (replicas != null) {
      jsonData['replicas'] = replicas!;
    }
    if (unavailableReplicas != null) {
      jsonData['unavailableReplicas'] = unavailableReplicas!;
    }
    if (updatedReplicas != null) {
      jsonData['updatedReplicas'] = updatedReplicas!;
    }

    return jsonData;
  }

  /// Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
  final int? availableReplicas;

  /// Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  final int? collisionCount;

  /// Represents the latest available observations of a deployment's current state.
  final List<DeploymentCondition>? conditions;

  /// The generation observed by the deployment controller.
  final int? observedGeneration;

  /// Total number of ready pods targeted by this deployment.
  final int? readyReplicas;

  /// Total number of non-terminated pods targeted by this deployment (their labels match the selector).
  final int? replicas;

  /// Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  final int? unavailableReplicas;

  /// Total number of non-terminated pods targeted by this deployment that have the desired template spec.
  final int? updatedReplicas;
}
