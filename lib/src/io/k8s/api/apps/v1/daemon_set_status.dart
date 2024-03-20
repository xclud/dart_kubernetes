// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../apps_v1.dart';

/// DaemonSetStatus represents the current status of a daemon set.
class DaemonSetStatus {
  /// Default constructor.
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

  /// Creates a [DaemonSetStatus] from JSON data.
  factory DaemonSetStatus.fromJson(Map<String, dynamic> json) {
    final tempCollisionCountJson = json['collisionCount'];
    final tempConditionsJson = json['conditions'];
    final tempCurrentNumberScheduledJson = json['currentNumberScheduled'];
    final tempDesiredNumberScheduledJson = json['desiredNumberScheduled'];
    final tempNumberAvailableJson = json['numberAvailable'];
    final tempNumberMisscheduledJson = json['numberMisscheduled'];
    final tempNumberReadyJson = json['numberReady'];
    final tempNumberUnavailableJson = json['numberUnavailable'];
    final tempObservedGenerationJson = json['observedGeneration'];
    final tempUpdatedNumberScheduledJson = json['updatedNumberScheduled'];

    final int? tempCollisionCount = tempCollisionCountJson;

    final List<DaemonSetCondition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => DaemonSetCondition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final int tempCurrentNumberScheduled = tempCurrentNumberScheduledJson;
    final int tempDesiredNumberScheduled = tempDesiredNumberScheduledJson;
    final int? tempNumberAvailable = tempNumberAvailableJson;
    final int tempNumberMisscheduled = tempNumberMisscheduledJson;
    final int tempNumberReady = tempNumberReadyJson;
    final int? tempNumberUnavailable = tempNumberUnavailableJson;
    final int? tempObservedGeneration = tempObservedGenerationJson;
    final int? tempUpdatedNumberScheduled = tempUpdatedNumberScheduledJson;

    return DaemonSetStatus(
      collisionCount: tempCollisionCount,
      conditions: tempConditions,
      currentNumberScheduled: tempCurrentNumberScheduled,
      desiredNumberScheduled: tempDesiredNumberScheduled,
      numberAvailable: tempNumberAvailable,
      numberMisscheduled: tempNumberMisscheduled,
      numberReady: tempNumberReady,
      numberUnavailable: tempNumberUnavailable,
      observedGeneration: tempObservedGeneration,
      updatedNumberScheduled: tempUpdatedNumberScheduled,
    );
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

  /// numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
  final int numberReady;

  /// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds).
  final int? numberUnavailable;

  /// The most recent generation observed by the daemon set controller.
  final int? observedGeneration;

  /// The total number of nodes that are running updated daemon pod.
  final int? updatedNumberScheduled;

  /// Converts a [DaemonSetStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCollisionCount = collisionCount;
    final tempConditions = conditions;
    final tempCurrentNumberScheduled = currentNumberScheduled;
    final tempDesiredNumberScheduled = desiredNumberScheduled;
    final tempNumberAvailable = numberAvailable;
    final tempNumberMisscheduled = numberMisscheduled;
    final tempNumberReady = numberReady;
    final tempNumberUnavailable = numberUnavailable;
    final tempObservedGeneration = observedGeneration;
    final tempUpdatedNumberScheduled = updatedNumberScheduled;

    if (tempCollisionCount != null) {
      jsonData['collisionCount'] = tempCollisionCount;
    }

    if (tempConditions != null) {
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    jsonData['currentNumberScheduled'] = tempCurrentNumberScheduled;

    jsonData['desiredNumberScheduled'] = tempDesiredNumberScheduled;

    if (tempNumberAvailable != null) {
      jsonData['numberAvailable'] = tempNumberAvailable;
    }

    jsonData['numberMisscheduled'] = tempNumberMisscheduled;

    jsonData['numberReady'] = tempNumberReady;

    if (tempNumberUnavailable != null) {
      jsonData['numberUnavailable'] = tempNumberUnavailable;
    }

    if (tempObservedGeneration != null) {
      jsonData['observedGeneration'] = tempObservedGeneration;
    }

    if (tempUpdatedNumberScheduled != null) {
      jsonData['updatedNumberScheduled'] = tempUpdatedNumberScheduled;
    }

    return jsonData;
  }
}
