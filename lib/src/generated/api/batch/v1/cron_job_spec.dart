import 'package:kubernetes/src/generated/api/batch/v1/job_template_spec.dart';

/// CronJobSpec describes how the job execution will look like and when it will actually run.
class CronJobSpec {
  /// The main constructor.
  const CronJobSpec({
    this.concurrencyPolicy,
    this.failedJobsHistoryLimit,
    required this.jobTemplate,
    required this.schedule,
    this.startingDeadlineSeconds,
    this.successfulJobsHistoryLimit,
    this.suspend,
  });

  /// Creates a CronJobSpec from JSON data.
  CronJobSpec.fromJson(Map<String, dynamic> json)
      : this(
          concurrencyPolicy: json['concurrencyPolicy'],
          failedJobsHistoryLimit: json['failedJobsHistoryLimit'],
          jobTemplate: JobTemplateSpec.fromJson(json['jobTemplate']),
          schedule: json['schedule'],
          startingDeadlineSeconds: json['startingDeadlineSeconds'],
          successfulJobsHistoryLimit: json['successfulJobsHistoryLimit'],
          suspend: json['suspend'],
        );

  /// Creates a list of CronJobSpec from JSON data.
  static List<CronJobSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CronJobSpec.fromJson(e)).toList();
  }

  /// Specifies how to treat concurrent executions of a Job. Valid values are: - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
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
}
