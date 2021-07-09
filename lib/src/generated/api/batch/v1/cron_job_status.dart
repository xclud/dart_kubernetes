import 'package:kubernetes/src/generated/api/core/v1/object_reference.dart';

/// CronJobStatus represents the current state of a cron job.
class CronJobStatus {
  /// The main constructor.
  const CronJobStatus({
    this.active,
    this.lastScheduleTime,
    this.lastSuccessfulTime,
  });

  /// Creates a CronJobStatus from JSON data.
  CronJobStatus.fromJson(Map<String, dynamic> json)
      : this(
          active: json['active'] != null
              ? ObjectReference.listFromJson(
                  (json['active'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          lastScheduleTime: json['lastScheduleTime'] != null
              ? DateTime.tryParse(json['lastScheduleTime'])
              : null,
          lastSuccessfulTime: json['lastSuccessfulTime'] != null
              ? DateTime.tryParse(json['lastSuccessfulTime'])
              : null,
        );

  /// Creates a list of CronJobStatus from JSON data.
  static List<CronJobStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CronJobStatus.fromJson(e)).toList();
  }

  /// Converts a CronJobStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (active != null) {
      jsonData['active'] = active!.map((item) => item.toJson()).toList();
    }
    if (lastScheduleTime != null) {
      jsonData['lastScheduleTime'] = lastScheduleTime!.toIso8601String();
    }
    if (lastSuccessfulTime != null) {
      jsonData['lastSuccessfulTime'] = lastSuccessfulTime!.toIso8601String();
    }

    return jsonData;
  }

  /// A list of pointers to currently running jobs.
  final List<ObjectReference>? active;

  /// Information when was the last time the job was successfully scheduled.
  final DateTime? lastScheduleTime;

  /// Information when was the last time the job successfully completed.
  final DateTime? lastSuccessfulTime;
}
