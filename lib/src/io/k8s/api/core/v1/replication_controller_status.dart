// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ReplicationControllerStatus represents the current status of a replication controller.
class ReplicationControllerStatus {
  /// Default constructor.
  const ReplicationControllerStatus({
    this.availableReplicas,
    this.conditions,
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
  });

  /// Creates a [ReplicationControllerStatus] from JSON data.
  factory ReplicationControllerStatus.fromJson(Map<String, dynamic> json) {
    final tempAvailableReplicasJson = json['availableReplicas'];
    final tempConditionsJson = json['conditions'];
    final tempFullyLabeledReplicasJson = json['fullyLabeledReplicas'];
    final tempObservedGenerationJson = json['observedGeneration'];
    final tempReadyReplicasJson = json['readyReplicas'];
    final tempReplicasJson = json['replicas'];

    final int? tempAvailableReplicas = tempAvailableReplicasJson;

    final List<ReplicationControllerCondition>? tempConditions =
        tempConditionsJson != null
            ? List<dynamic>.from(tempConditionsJson)
                .map((e) => ReplicationControllerCondition.fromJson(
                    Map<String, dynamic>.from(e)))
                .toList()
            : null;

    final int? tempFullyLabeledReplicas = tempFullyLabeledReplicasJson;
    final int? tempObservedGeneration = tempObservedGenerationJson;
    final int? tempReadyReplicas = tempReadyReplicasJson;
    final int tempReplicas = tempReplicasJson;

    return ReplicationControllerStatus(
      availableReplicas: tempAvailableReplicas,
      conditions: tempConditions,
      fullyLabeledReplicas: tempFullyLabeledReplicas,
      observedGeneration: tempObservedGeneration,
      readyReplicas: tempReadyReplicas,
      replicas: tempReplicas,
    );
  }

  /// The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  final int? availableReplicas;

  /// Represents the latest available observations of a replication controller's current state.
  final List<ReplicationControllerCondition>? conditions;

  /// The number of pods that have labels matching the labels of the pod template of the replication controller.
  final int? fullyLabeledReplicas;

  /// ObservedGeneration reflects the generation of the most recently observed replication controller.
  final int? observedGeneration;

  /// The number of ready replicas for this replication controller.
  final int? readyReplicas;

  /// Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller.
  final int replicas;

  /// Converts a [ReplicationControllerStatus] instance to JSON data.
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
      jsonData['conditions'] = tempConditions;
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
