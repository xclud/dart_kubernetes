// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../apps_v1.dart';

/// ReplicaSetStatus represents the current status of a ReplicaSet.
class ReplicaSetStatus {
  /// Default constructor.
  const ReplicaSetStatus({
    this.availableReplicas,
    this.conditions,
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
  });

  /// Creates a [ReplicaSetStatus] from JSON data.
  factory ReplicaSetStatus.fromJson(Map<String, dynamic> json) {
    final tempAvailableReplicasJson = json['availableReplicas'];
    final tempConditionsJson = json['conditions'];
    final tempFullyLabeledReplicasJson = json['fullyLabeledReplicas'];
    final tempObservedGenerationJson = json['observedGeneration'];
    final tempReadyReplicasJson = json['readyReplicas'];
    final tempReplicasJson = json['replicas'];

    final int? tempAvailableReplicas = tempAvailableReplicasJson;

    final List<ReplicaSetCondition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => ReplicaSetCondition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final int? tempFullyLabeledReplicas = tempFullyLabeledReplicasJson;
    final int? tempObservedGeneration = tempObservedGenerationJson;
    final int? tempReadyReplicas = tempReadyReplicasJson;
    final int tempReplicas = tempReplicasJson;

    return ReplicaSetStatus(
      availableReplicas: tempAvailableReplicas,
      conditions: tempConditions,
      fullyLabeledReplicas: tempFullyLabeledReplicas,
      observedGeneration: tempObservedGeneration,
      readyReplicas: tempReadyReplicas,
      replicas: tempReplicas,
    );
  }

  /// The number of available replicas (ready for at least minReadySeconds) for this replica set.
  final int? availableReplicas;

  /// Represents the latest available observations of a replica set's current state.
  final List<ReplicaSetCondition>? conditions;

  /// The number of pods that have labels matching the labels of the pod template of the replicaset.
  final int? fullyLabeledReplicas;

  /// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  final int? observedGeneration;

  /// readyReplicas is the number of pods targeted by this ReplicaSet with a Ready Condition.
  final int? readyReplicas;

  /// Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller.
  final int replicas;

  /// Converts a [ReplicaSetStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAvailableReplicas = availableReplicas;
    final tempConditions = conditions;
    final tempFullyLabeledReplicas = fullyLabeledReplicas;
    final tempObservedGeneration = observedGeneration;
    final tempReadyReplicas = readyReplicas;
    final tempReplicas = replicas;

    if (tempAvailableReplicas != null) {
      jsonData['availableReplicas'] = tempAvailableReplicas;
    }

    if (tempConditions != null) {
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempFullyLabeledReplicas != null) {
      jsonData['fullyLabeledReplicas'] = tempFullyLabeledReplicas;
    }

    if (tempObservedGeneration != null) {
      jsonData['observedGeneration'] = tempObservedGeneration;
    }

    if (tempReadyReplicas != null) {
      jsonData['readyReplicas'] = tempReadyReplicas;
    }

    jsonData['replicas'] = tempReplicas;

    return jsonData;
  }
}
