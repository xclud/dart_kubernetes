// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// StatefulSetStatus represents the current state of a StatefulSet.
class StatefulSetStatus {
  /// Default constructor.
  const StatefulSetStatus({
    this.availableReplicas,
    this.collisionCount,
    this.conditions,
    this.currentReplicas,
    this.currentRevision,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
    this.updateRevision,
    this.updatedReplicas,
  });

  /// Creates a [StatefulSetStatus] from JSON data.
  factory StatefulSetStatus.fromJson(Map<String, dynamic> json) {
    final tempAvailableReplicasJson = json['availableReplicas'];
    final tempCollisionCountJson = json['collisionCount'];
    final tempConditionsJson = json['conditions'];
    final tempCurrentReplicasJson = json['currentReplicas'];
    final tempCurrentRevisionJson = json['currentRevision'];
    final tempObservedGenerationJson = json['observedGeneration'];
    final tempReadyReplicasJson = json['readyReplicas'];
    final tempReplicasJson = json['replicas'];
    final tempUpdateRevisionJson = json['updateRevision'];
    final tempUpdatedReplicasJson = json['updatedReplicas'];

    final int? tempAvailableReplicas = tempAvailableReplicasJson;
    final int? tempCollisionCount = tempCollisionCountJson;

    final List<StatefulSetCondition>? tempConditions =
        tempConditionsJson != null
            ? List<dynamic>.from(tempConditionsJson)
                .map((e) =>
                    StatefulSetCondition.fromJson(Map<String, dynamic>.from(e)))
                .toList()
            : null;

    final int? tempCurrentReplicas = tempCurrentReplicasJson;
    final String? tempCurrentRevision = tempCurrentRevisionJson;
    final int? tempObservedGeneration = tempObservedGenerationJson;
    final int? tempReadyReplicas = tempReadyReplicasJson;
    final int tempReplicas = tempReplicasJson;
    final String? tempUpdateRevision = tempUpdateRevisionJson;
    final int? tempUpdatedReplicas = tempUpdatedReplicasJson;

    return StatefulSetStatus(
      availableReplicas: tempAvailableReplicas,
      collisionCount: tempCollisionCount,
      conditions: tempConditions,
      currentReplicas: tempCurrentReplicas,
      currentRevision: tempCurrentRevision,
      observedGeneration: tempObservedGeneration,
      readyReplicas: tempReadyReplicas,
      replicas: tempReplicas,
      updateRevision: tempUpdateRevision,
      updatedReplicas: tempUpdatedReplicas,
    );
  }

  /// Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
  final int? availableReplicas;

  /// collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final int? collisionCount;

  /// Represents the latest available observations of a statefulset's current state.
  final List<StatefulSetCondition>? conditions;

  /// currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  final int? currentReplicas;

  /// currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  final String? currentRevision;

  /// observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  final int? observedGeneration;

  /// readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
  final int? readyReplicas;

  /// replicas is the number of Pods created by the StatefulSet controller.
  final int replicas;

  /// updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas).
  final String? updateRevision;

  /// updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  final int? updatedReplicas;

  /// Converts a [StatefulSetStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAvailableReplicas = availableReplicas;
    final tempCollisionCount = collisionCount;
    final tempConditions = conditions;
    final tempCurrentReplicas = currentReplicas;
    final tempCurrentRevision = currentRevision;
    final tempObservedGeneration = observedGeneration;
    final tempReadyReplicas = readyReplicas;
    final tempReplicas = replicas;
    final tempUpdateRevision = updateRevision;
    final tempUpdatedReplicas = updatedReplicas;

    if (tempAvailableReplicas != null) {
      jsonData['availableReplicas'] = tempAvailableReplicas;
    }

    if (tempCollisionCount != null) {
      jsonData['collisionCount'] = tempCollisionCount;
    }

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    if (tempCurrentReplicas != null) {
      jsonData['currentReplicas'] = tempCurrentReplicas;
    }

    if (tempCurrentRevision != null) {
      jsonData['currentRevision'] = tempCurrentRevision;
    }

    if (tempObservedGeneration != null) {
      jsonData['observedGeneration'] = tempObservedGeneration;
    }

    if (tempReadyReplicas != null) {
      jsonData['readyReplicas'] = tempReadyReplicas;
    }

    jsonData['replicas'] = tempReplicas;

    if (tempUpdateRevision != null) {
      jsonData['updateRevision'] = tempUpdateRevision;
    }

    if (tempUpdatedReplicas != null) {
      jsonData['updatedReplicas'] = tempUpdatedReplicas;
    }

    return jsonData;
  }
}
