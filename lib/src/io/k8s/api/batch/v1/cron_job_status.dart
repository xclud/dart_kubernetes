// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.batch.v1;

/// CronJobStatus represents the current state of a cron job.
class CronJobStatus {
  /// Default constructor.
  const CronJobStatus({
    this.active,
    this.lastScheduleTime,
    this.lastSuccessfulTime,
  });

  /// Creates a [CronJobStatus] from JSON data.
  factory CronJobStatus.fromJson(Map<String, dynamic> json) {
    final tempActiveJson = json['active'];
    final tempLastScheduleTimeJson = json['lastScheduleTime'];
    final tempLastSuccessfulTimeJson = json['lastSuccessfulTime'];

    final List<ObjectReference>? tempActive = tempActiveJson != null
        ? List<dynamic>.from(tempActiveJson)
            .map(
              (e) => ObjectReference.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final DateTime? tempLastScheduleTime = tempLastScheduleTimeJson != null
        ? DateTime.tryParse(tempLastScheduleTimeJson)
        : null;
    final DateTime? tempLastSuccessfulTime = tempLastSuccessfulTimeJson != null
        ? DateTime.tryParse(tempLastSuccessfulTimeJson)
        : null;

    return CronJobStatus(
      active: tempActive,
      lastScheduleTime: tempLastScheduleTime,
      lastSuccessfulTime: tempLastSuccessfulTime,
    );
  }

  /// A list of pointers to currently running jobs.
  final List<ObjectReference>? active;

  /// Information when was the last time the job was successfully scheduled.
  final DateTime? lastScheduleTime;

  /// Information when was the last time the job successfully completed.
  final DateTime? lastSuccessfulTime;

  /// Converts a [CronJobStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempActive = active;
    final tempLastScheduleTime = lastScheduleTime;
    final tempLastSuccessfulTime = lastSuccessfulTime;

    if (tempActive != null) {
      jsonData['active'] =
          tempActive.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempLastScheduleTime != null) {
      jsonData['lastScheduleTime'] = tempLastScheduleTime;
    }

    if (tempLastSuccessfulTime != null) {
      jsonData['lastSuccessfulTime'] = tempLastSuccessfulTime;
    }

    return jsonData;
  }
}
