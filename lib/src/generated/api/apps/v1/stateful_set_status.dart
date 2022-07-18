import 'package:kubernetes/src/generated/api/apps/v1/stateful_set_condition.dart';

/// StatefulSetStatus represents the current state of a StatefulSet.
class StatefulSetStatus {
  /// The main constructor.
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

  /// Creates a StatefulSetStatus from JSON data.
  StatefulSetStatus.fromJson(Map<String, dynamic> json)
      : this(
          availableReplicas: json['availableReplicas'],
          collisionCount: json['collisionCount'],
          conditions: json['conditions'] != null
              ? StatefulSetCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          currentReplicas: json['currentReplicas'],
          currentRevision: json['currentRevision'],
          observedGeneration: json['observedGeneration'],
          readyReplicas: json['readyReplicas'],
          replicas: json['replicas'],
          updateRevision: json['updateRevision'],
          updatedReplicas: json['updatedReplicas'],
        );

  /// Creates a list of StatefulSetStatus from JSON data.
  static List<StatefulSetStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StatefulSetStatus.fromJson(e)).toList();
  }

  /// Converts a StatefulSetStatus instance to JSON data.
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
    if (currentReplicas != null) {
      jsonData['currentReplicas'] = currentReplicas!;
    }
    if (currentRevision != null) {
      jsonData['currentRevision'] = currentRevision!;
    }
    if (observedGeneration != null) {
      jsonData['observedGeneration'] = observedGeneration!;
    }
    if (readyReplicas != null) {
      jsonData['readyReplicas'] = readyReplicas!;
    }
    jsonData['replicas'] = replicas;
    if (updateRevision != null) {
      jsonData['updateRevision'] = updateRevision!;
    }
    if (updatedReplicas != null) {
      jsonData['updatedReplicas'] = updatedReplicas!;
    }

    return jsonData;
  }

  /// Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
  final int? availableReplicas;

  /// CollisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final int? collisionCount;

  /// Represents the latest available observations of a statefulset's current state.
  final List<StatefulSetCondition>? conditions;

  /// CurrentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  final int? currentReplicas;

  /// CurrentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  final String? currentRevision;

  /// ObservedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  final int? observedGeneration;

  /// ReadyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
  final int? readyReplicas;

  /// Replicas is the number of Pods created by the StatefulSet controller.
  final int replicas;

  /// UpdateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas).
  final String? updateRevision;

  /// UpdatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  final int? updatedReplicas;
}
