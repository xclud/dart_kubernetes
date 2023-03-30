// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.batch.v1;

/// JobStatus represents the current state of a Job.
class JobStatus {
  /// Default constructor.
  const JobStatus({
    this.active,
    this.completedIndexes,
    this.completionTime,
    this.conditions,
    this.failed,
    this.ready,
    this.startTime,
    this.succeeded,
    this.uncountedTerminatedPods,
  });

  /// Creates a [JobStatus] from JSON data.
  factory JobStatus.fromJson(Map<String, dynamic> json) {
    final tempActiveJson = json['active'];
    final tempCompletedIndexesJson = json['completedIndexes'];
    final tempCompletionTimeJson = json['completionTime'];
    final tempConditionsJson = json['conditions'];
    final tempFailedJson = json['failed'];
    final tempReadyJson = json['ready'];
    final tempStartTimeJson = json['startTime'];
    final tempSucceededJson = json['succeeded'];
    final tempUncountedTerminatedPodsJson = json['uncountedTerminatedPods'];

    final int? tempActive = tempActiveJson;
    final String? tempCompletedIndexes = tempCompletedIndexesJson;
    final DateTime? tempCompletionTime = tempCompletionTimeJson != null
        ? DateTime.tryParse(tempCompletionTimeJson)
        : null;

    final List<JobCondition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => JobCondition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final int? tempFailed = tempFailedJson;
    final int? tempReady = tempReadyJson;
    final DateTime? tempStartTime =
        tempStartTimeJson != null ? DateTime.tryParse(tempStartTimeJson) : null;
    final int? tempSucceeded = tempSucceededJson;
    final UncountedTerminatedPods? tempUncountedTerminatedPods =
        tempUncountedTerminatedPodsJson != null
            ? UncountedTerminatedPods.fromJson(tempUncountedTerminatedPodsJson)
            : null;

    return JobStatus(
      active: tempActive,
      completedIndexes: tempCompletedIndexes,
      completionTime: tempCompletionTime,
      conditions: tempConditions,
      failed: tempFailed,
      ready: tempReady,
      startTime: tempStartTime,
      succeeded: tempSucceeded,
      uncountedTerminatedPods: tempUncountedTerminatedPods,
    );
  }

  /// The number of pending and running pods.
  final int? active;

  /// completedIndexes holds the completed indexes when .spec.completionMode = "Indexed" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7".
  final String? completedIndexes;

  /// Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
  final DateTime? completionTime;

  /// The latest available observations of an object's current state. When a Job fails, one of the conditions will have type "Failed" and status true. When a Job is suspended, one of the conditions will have type "Suspended" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type "Complete" and status true. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/.
  final List<JobCondition>? conditions;

  /// The number of pods which reached phase Failed.
  final int? failed;

  /// The number of pods which have a Ready condition.
  ///
  /// This field is beta-level. The job controller populates the field when the feature gate JobReadyPods is enabled (enabled by default).
  final int? ready;

  /// Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC.
  final DateTime? startTime;

  /// The number of pods which reached phase Succeeded.
  final int? succeeded;

  /// uncountedTerminatedPods holds the UIDs of Pods that have terminated but the job controller hasn't yet accounted for in the status counters.
  ///
  /// The job controller creates pods with a finalizer. When a pod terminates (succeeded or failed), the controller does three steps to account for it in the job status:
  ///
  /// 1. Add the pod UID to the arrays in this field. 2. Remove the pod finalizer. 3. Remove the pod UID from the arrays while increasing the corresponding
  ///     counter.
  ///
  /// Old jobs might not be tracked using this field, in which case the field remains null.
  final UncountedTerminatedPods? uncountedTerminatedPods;

  /// Converts a [JobStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempActive = active;
    final tempCompletedIndexes = completedIndexes;
    final tempCompletionTime = completionTime;
    final tempConditions = conditions;
    final tempFailed = failed;
    final tempReady = ready;
    final tempStartTime = startTime;
    final tempSucceeded = succeeded;
    final tempUncountedTerminatedPods = uncountedTerminatedPods;

    if (tempActive != null) {
      jsonData['active'] = tempActive;
    }

    if (tempCompletedIndexes != null) {
      jsonData['completedIndexes'] = tempCompletedIndexes;
    }

    if (tempCompletionTime != null) {
      jsonData['completionTime'] = tempCompletionTime;
    }

    if (tempConditions != null) {
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempFailed != null) {
      jsonData['failed'] = tempFailed;
    }

    if (tempReady != null) {
      jsonData['ready'] = tempReady;
    }

    if (tempStartTime != null) {
      jsonData['startTime'] = tempStartTime;
    }

    if (tempSucceeded != null) {
      jsonData['succeeded'] = tempSucceeded;
    }

    if (tempUncountedTerminatedPods != null) {
      jsonData['uncountedTerminatedPods'] =
          tempUncountedTerminatedPods.toJson();
    }

    return jsonData;
  }
}
