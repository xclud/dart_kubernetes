import 'package:kubernetes/src/generated/api/batch/v1/job_condition.dart';

/// JobStatus represents the current state of a Job.
class JobStatus {
  /// The main constructor.
  const JobStatus({
    this.active,
    this.completedIndexes,
    this.completionTime,
    this.conditions,
    this.failed,
    this.startTime,
    this.succeeded,
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
          startTime: json['startTime'] != null
              ? DateTime.tryParse(json['startTime'])
              : null,
          succeeded: json['succeeded'],
        );

  /// Creates a list of JobStatus from JSON data.
  static List<JobStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => JobStatus.fromJson(e)).toList();
  }

  /// The number of actively running pods.
  final int? active;

  /// CompletedIndexes holds the completed indexes when .spec.completionMode = "Indexed" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7".
  final String? completedIndexes;

  /// Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
  final DateTime? completionTime;

  /// The latest available observations of an object's current state. When a Job fails, one of the conditions will have type "Failed" and status true. When a Job is suspended, one of the conditions will have type "Suspended" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type "Complete" and status true. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/.
  final List<JobCondition>? conditions;

  /// The number of pods which reached phase Failed.
  final int? failed;

  /// Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC.
  final DateTime? startTime;

  /// The number of pods which reached phase Succeeded.
  final int? succeeded;
}
