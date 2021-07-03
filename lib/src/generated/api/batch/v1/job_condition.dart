/// JobCondition describes current state of a job.
class JobCondition {
  /// The main constructor.
  const JobCondition({
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a JobCondition from JSON data.
  JobCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastProbeTime: json['lastProbeTime'] != null
              ? DateTime.tryParse(json['lastProbeTime'])
              : null,
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of JobCondition from JSON data.
  static List<JobCondition> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => JobCondition.fromJson(e)).toList();
  }

  /// Last time the condition was checked.
  final DateTime? lastProbeTime;

  /// Last time the condition transit from one status to another.
  final DateTime? lastTransitionTime;

  /// Human readable message indicating details about last transition.
  final String? message;

  /// (brief) reason for the condition's last transition.
  final String? reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of job condition, Complete or Failed.
  final String type;
}
