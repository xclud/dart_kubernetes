// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../batch_v1.dart';

/// CronJobSpec describes how the job execution will look like and when it will actually run.
class CronJobSpec {
  /// Default constructor.
  const CronJobSpec({
    this.concurrencyPolicy,
    this.failedJobsHistoryLimit,
    required this.jobTemplate,
    required this.schedule,
    this.startingDeadlineSeconds,
    this.successfulJobsHistoryLimit,
    this.suspend,
    this.timeZone,
  });

  /// Creates a [CronJobSpec] from JSON data.
  factory CronJobSpec.fromJson(Map<String, dynamic> json) {
    final tempConcurrencyPolicyJson = json['concurrencyPolicy'];
    final tempFailedJobsHistoryLimitJson = json['failedJobsHistoryLimit'];
    final tempJobTemplateJson = json['jobTemplate'];
    final tempScheduleJson = json['schedule'];
    final tempStartingDeadlineSecondsJson = json['startingDeadlineSeconds'];
    final tempSuccessfulJobsHistoryLimitJson =
        json['successfulJobsHistoryLimit'];
    final tempSuspendJson = json['suspend'];
    final tempTimeZoneJson = json['timeZone'];

    final String? tempConcurrencyPolicy = tempConcurrencyPolicyJson;
    final int? tempFailedJobsHistoryLimit = tempFailedJobsHistoryLimitJson;
    final JobTemplateSpec tempJobTemplate =
        JobTemplateSpec.fromJson(tempJobTemplateJson);
    final String tempSchedule = tempScheduleJson;
    final int? tempStartingDeadlineSeconds = tempStartingDeadlineSecondsJson;
    final int? tempSuccessfulJobsHistoryLimit =
        tempSuccessfulJobsHistoryLimitJson;
    final bool? tempSuspend = tempSuspendJson;
    final String? tempTimeZone = tempTimeZoneJson;

    return CronJobSpec(
      concurrencyPolicy: tempConcurrencyPolicy,
      failedJobsHistoryLimit: tempFailedJobsHistoryLimit,
      jobTemplate: tempJobTemplate,
      schedule: tempSchedule,
      startingDeadlineSeconds: tempStartingDeadlineSeconds,
      successfulJobsHistoryLimit: tempSuccessfulJobsHistoryLimit,
      suspend: tempSuspend,
      timeZone: tempTimeZone,
    );
  }

  /// Specifies how to treat concurrent executions of a Job. Valid values are:
  ///
  /// - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one.
  final String? concurrencyPolicy;

  /// The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
  final int? failedJobsHistoryLimit;

  /// Specifies the job that will be created when executing a CronJob.
  final JobTemplateSpec jobTemplate;

  /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  final String schedule;

  /// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  final int? startingDeadlineSeconds;

  /// The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
  final int? successfulJobsHistoryLimit;

  /// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  final bool? suspend;

  /// The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones.
  final String? timeZone;

  /// Converts a [CronJobSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConcurrencyPolicy = concurrencyPolicy;
    final tempFailedJobsHistoryLimit = failedJobsHistoryLimit;
    final tempJobTemplate = jobTemplate;
    final tempSchedule = schedule;
    final tempStartingDeadlineSeconds = startingDeadlineSeconds;
    final tempSuccessfulJobsHistoryLimit = successfulJobsHistoryLimit;
    final tempSuspend = suspend;
    final tempTimeZone = timeZone;

    if (tempConcurrencyPolicy != null) {
      jsonData['concurrencyPolicy'] = tempConcurrencyPolicy;
    }

    if (tempFailedJobsHistoryLimit != null) {
      jsonData['failedJobsHistoryLimit'] = tempFailedJobsHistoryLimit;
    }

    jsonData['jobTemplate'] = tempJobTemplate.toJson();

    jsonData['schedule'] = tempSchedule;

    if (tempStartingDeadlineSeconds != null) {
      jsonData['startingDeadlineSeconds'] = tempStartingDeadlineSeconds;
    }

    if (tempSuccessfulJobsHistoryLimit != null) {
      jsonData['successfulJobsHistoryLimit'] = tempSuccessfulJobsHistoryLimit;
    }

    if (tempSuspend != null) {
      jsonData['suspend'] = tempSuspend;
    }

    if (tempTimeZone != null) {
      jsonData['timeZone'] = tempTimeZone;
    }

    return jsonData;
  }
}
