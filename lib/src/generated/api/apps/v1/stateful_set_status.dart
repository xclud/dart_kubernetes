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

  /// Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset. This is an alpha field and requires enabling StatefulSetMinReadySeconds feature gate. Remove omitempty when graduating to beta
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

  /// readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
  final int? readyReplicas;

  /// replicas is the number of Pods created by the StatefulSet controller.
  final int replicas;

  /// updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  final String? updateRevision;

  /// updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  final int? updatedReplicas;
}
