import 'package:kubernetes/src/generated/api/batch/v1/job_condition.dart';
import 'package:kubernetes/src/generated/api/batch/v1/uncounted_terminated_pods.dart';

/// JobStatus represents the current state of a Job.
class JobStatus {
  /// The main constructor.
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

  /// Creates a JobStatus from JSON data.
  JobStatus.fromJson(Map<String, dynamic> json)
      : this(
          active: json['active'],
          completedIndexes: json['completedIndexes'],
          completionTime: json['completionTime'] != null
              ? DateTime.tryParse(json['completionTime'])
              : null,
          conditions: json['conditions'] != null
              ? JobCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          failed: json['failed'],
          ready: json['ready'],
          startTime: json['startTime'] != null
              ? DateTime.tryParse(json['startTime'])
              : null,
          succeeded: json['succeeded'],
          uncountedTerminatedPods: json['uncountedTerminatedPods'] != null
              ? UncountedTerminatedPods.fromJson(
                  json['uncountedTerminatedPods'])
              : null,
        );

  /// Creates a list of JobStatus from JSON data.
  static List<JobStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => JobStatus.fromJson(e)).toList();
  }

  /// Converts a JobStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (active != null) {
      jsonData['active'] = active!;
    }
    if (completedIndexes != null) {
      jsonData['completedIndexes'] = completedIndexes!;
    }
    if (completionTime != null) {
      jsonData['completionTime'] = completionTime!.toIso8601String();
    }
    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }
    if (failed != null) {
      jsonData['failed'] = failed!;
    }
    if (ready != null) {
      jsonData['ready'] = ready!;
    }
    if (startTime != null) {
      jsonData['startTime'] = startTime!.toIso8601String();
    }
    if (succeeded != null) {
      jsonData['succeeded'] = succeeded!;
    }
    if (uncountedTerminatedPods != null) {
      jsonData['uncountedTerminatedPods'] = uncountedTerminatedPods!.toJson();
    }

    return jsonData;
  }

  /// The number of pending and running pods.
  final int? active;

  /// CompletedIndexes holds the completed indexes when .spec.completionMode = "Indexed" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7".
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

  /// UncountedTerminatedPods holds the UIDs of Pods that have terminated but the job controller hasn't yet accounted for in the status counters.
  ///
  /// The job controller creates pods with a finalizer. When a pod terminates (succeeded or failed), the controller does three steps to account for it in the job status: (1) Add the pod UID to the arrays in this field. (2) Remove the pod finalizer. (3) Remove the pod UID from the arrays while increasing the corresponding
  ///     counter.
  ///
  /// This field is beta-level. The job controller only makes use of this field when the feature gate JobTrackingWithFinalizers is enabled (enabled by default). Old jobs might not be tracked using this field, in which case the field remains null.
  final UncountedTerminatedPods? uncountedTerminatedPods;
}
