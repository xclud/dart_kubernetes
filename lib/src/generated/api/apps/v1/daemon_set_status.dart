import 'package:kubernetes/src/generated/api/apps/v1/daemon_set_condition.dart';

/// DaemonSetStatus represents the current status of a daemon set.
class DaemonSetStatus {
  /// The main constructor.
  const DaemonSetStatus({
    this.collisionCount,
    this.conditions,
    required this.currentNumberScheduled,
    required this.desiredNumberScheduled,
    this.numberAvailable,
    required this.numberMisscheduled,
    required this.numberReady,
    this.numberUnavailable,
    this.observedGeneration,
    this.updatedNumberScheduled,
  });

  /// Creates a DaemonSetStatus from JSON data.
  DaemonSetStatus.fromJson(Map<String, dynamic> json)
      : this(
          collisionCount: json['collisionCount'],
          conditions: json['conditions'] != null
              ? DaemonSetCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          currentNumberScheduled: json['currentNumberScheduled'],
          desiredNumberScheduled: json['desiredNumberScheduled'],
          numberAvailable: json['numberAvailable'],
          numberMisscheduled: json['numberMisscheduled'],
          numberReady: json['numberReady'],
          numberUnavailable: json['numberUnavailable'],
          observedGeneration: json['observedGeneration'],
          updatedNumberScheduled: json['updatedNumberScheduled'],
        );

  /// Creates a list of DaemonSetStatus from JSON data.
  static List<DaemonSetStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DaemonSetStatus.fromJson(e)).toList();
  }

  /// Converts a DaemonSetStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (collisionCount != null) {
      jsonData['collisionCount'] = collisionCount!;
    }
    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }
    jsonData['currentNumberScheduled'] = currentNumberScheduled;
    jsonData['desiredNumberScheduled'] = desiredNumberScheduled;
    if (numberAvailable != null) {
      jsonData['numberAvailable'] = numberAvailable!;
    }
    jsonData['numberMisscheduled'] = numberMisscheduled;
    jsonData['numberReady'] = numberReady;
    if (numberUnavailable != null) {
      jsonData['numberUnavailable'] = numberUnavailable!;
    }
    if (observedGeneration != null) {
      jsonData['observedGeneration'] = observedGeneration!;
    }
    if (updatedNumberScheduled != null) {
      jsonData['updatedNumberScheduled'] = updatedNumberScheduled!;
    }

    return jsonData;
  }

  /// Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final int? collisionCount;

  /// Represents the latest available observations of a DaemonSet's current state.
  final List<DaemonSetCondition>? conditions;

  /// The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/.
  final int currentNumberScheduled;

  /// The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/.
  final int desiredNumberScheduled;

  /// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds).
  final int? numberAvailable;

  /// The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/.
  final int numberMisscheduled;

  /// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
  final int numberReady;

  /// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds).
  final int? numberUnavailable;

  /// The most recent generation observed by the daemon set controller.
  final int? observedGeneration;

  /// The total number of nodes that are running updated daemon pod.
  final int? updatedNumberScheduled;
}
