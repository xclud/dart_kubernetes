import 'package:kubernetes/src/generated/api/apps/v1/replica_set_condition.dart';

/// ReplicaSetStatus represents the current status of a ReplicaSet.
class ReplicaSetStatus {
  /// The main constructor.
  const ReplicaSetStatus({
    this.availableReplicas,
    this.conditions,
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
  });

  /// Creates a ReplicaSetStatus from JSON data.
  ReplicaSetStatus.fromJson(Map<String, dynamic> json)
      : this(
          availableReplicas: json['availableReplicas'],
          conditions: json['conditions'] != null
              ? ReplicaSetCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          fullyLabeledReplicas: json['fullyLabeledReplicas'],
          observedGeneration: json['observedGeneration'],
          readyReplicas: json['readyReplicas'],
          replicas: json['replicas'],
        );

  /// Creates a list of ReplicaSetStatus from JSON data.
  static List<ReplicaSetStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ReplicaSetStatus.fromJson(e)).toList();
  }

  /// The number of available replicas (ready for at least minReadySeconds) for this replica set.
  final int? availableReplicas;

  /// Represents the latest available observations of a replica set's current state.
  final List<ReplicaSetCondition>? conditions;

  /// The number of pods that have labels matching the labels of the pod template of the replicaset.
  final int? fullyLabeledReplicas;

  /// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  final int? observedGeneration;

  /// The number of ready replicas for this replica set.
  final int? readyReplicas;

  /// Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  final int replicas;
}
