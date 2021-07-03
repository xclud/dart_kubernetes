import 'package:kubernetes/src/generated/api/core/v1/replication_controller_condition.dart';

/// ReplicationControllerStatus represents the current status of a replication controller.
class ReplicationControllerStatus {
  /// The main constructor.
  const ReplicationControllerStatus({
    this.availableReplicas,
    this.conditions,
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
  });

  /// Creates a ReplicationControllerStatus from JSON data.
  ReplicationControllerStatus.fromJson(Map<String, dynamic> json)
      : this(
          availableReplicas: json['availableReplicas'],
          conditions: json['conditions'] != null
              ? ReplicationControllerCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          fullyLabeledReplicas: json['fullyLabeledReplicas'],
          observedGeneration: json['observedGeneration'],
          readyReplicas: json['readyReplicas'],
          replicas: json['replicas'],
        );

  /// Creates a list of ReplicationControllerStatus from JSON data.
  static List<ReplicationControllerStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ReplicationControllerStatus.fromJson(e)).toList();
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

  /// Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  final int replicas;
}
