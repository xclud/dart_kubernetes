// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../batch_v1.dart';

/// JobSpec describes how the job execution will look like.
class JobSpec {
  /// Default constructor.
  const JobSpec({
    this.activeDeadlineSeconds,
    this.backoffLimit,
    this.completionMode,
    this.completions,
    this.manualSelector,
    this.parallelism,
    this.podFailurePolicy,
    this.selector,
    this.suspend,
    required this.template,
    this.ttlSecondsAfterFinished,
  });

  /// Creates a [JobSpec] from JSON data.
  factory JobSpec.fromJson(Map<String, dynamic> json) {
    final tempActiveDeadlineSecondsJson = json['activeDeadlineSeconds'];
    final tempBackoffLimitJson = json['backoffLimit'];
    final tempCompletionModeJson = json['completionMode'];
    final tempCompletionsJson = json['completions'];
    final tempManualSelectorJson = json['manualSelector'];
    final tempParallelismJson = json['parallelism'];
    final tempPodFailurePolicyJson = json['podFailurePolicy'];
    final tempSelectorJson = json['selector'];
    final tempSuspendJson = json['suspend'];
    final tempTemplateJson = json['template'];
    final tempTtlSecondsAfterFinishedJson = json['ttlSecondsAfterFinished'];

    final int? tempActiveDeadlineSeconds = tempActiveDeadlineSecondsJson;
    final int? tempBackoffLimit = tempBackoffLimitJson;
    final String? tempCompletionMode = tempCompletionModeJson;
    final int? tempCompletions = tempCompletionsJson;
    final bool? tempManualSelector = tempManualSelectorJson;
    final int? tempParallelism = tempParallelismJson;
    final PodFailurePolicy? tempPodFailurePolicy =
        tempPodFailurePolicyJson != null
            ? PodFailurePolicy.fromJson(tempPodFailurePolicyJson)
            : null;
    final LabelSelector? tempSelector = tempSelectorJson != null
        ? LabelSelector.fromJson(tempSelectorJson)
        : null;
    final bool? tempSuspend = tempSuspendJson;
    final PodTemplateSpec tempTemplate =
        PodTemplateSpec.fromJson(tempTemplateJson);
    final int? tempTtlSecondsAfterFinished = tempTtlSecondsAfterFinishedJson;

    return JobSpec(
      activeDeadlineSeconds: tempActiveDeadlineSeconds,
      backoffLimit: tempBackoffLimit,
      completionMode: tempCompletionMode,
      completions: tempCompletions,
      manualSelector: tempManualSelector,
      parallelism: tempParallelism,
      podFailurePolicy: tempPodFailurePolicy,
      selector: tempSelector,
      suspend: tempSuspend,
      template: tempTemplate,
      ttlSecondsAfterFinished: tempTtlSecondsAfterFinished,
    );
  }

  /// Specifies the duration in seconds relative to the startTime that the job may be continuously active before the system tries to terminate it; value must be positive integer. If a Job is suspended (at creation or through an update), this timer will effectively be stopped and reset when the Job is resumed again.
  final int? activeDeadlineSeconds;

  /// Specifies the number of retries before marking this job failed. Defaults to 6.
  final int? backoffLimit;

  /// completionMode specifies how Pod completions are tracked. It can be `NonIndexed` (default) or `Indexed`.
  ///
  /// `NonIndexed` means that the Job is considered complete when there have been .spec.completions successfully completed Pods. Each Pod completion is homologous to each other.
  ///
  /// `Indexed` means that the Pods of a Job get an associated completion index from 0 to (.spec.completions - 1), available in the annotation batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5. In addition, The Pod name takes the form `$(job-name)-$(index)-$(random-string)`, the Pod hostname takes the form `$(job-name)-$(index)`.
  ///
  /// More completion modes can be added in the future. If the Job controller observes a mode that it doesn't recognize, which is possible during upgrades due to version skew, the controller skips updates for the Job.
  final String? completionMode;

  /// Specifies the desired number of successfully finished pods the job should be run with.  Setting to null means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/.
  final int? completions;

  /// manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old `extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector.
  final bool? manualSelector;

  /// Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/.
  final int? parallelism;

  /// Specifies the policy of handling failed pods. In particular, it allows to specify the set of actions and conditions which need to be satisfied to take the associated action. If empty, the default behaviour applies - the counter of failed pods, represented by the jobs's .status.failed field, is incremented and it is checked against the backoffLimit. This field cannot be used in combination with restartPolicy=OnFailure.
  ///
  /// This field is alpha-level. To use this field, you must enable the `JobPodFailurePolicy` feature gate (disabled by default).
  final PodFailurePolicy? podFailurePolicy;

  /// A label query over pods that should match the pod count. Normally, the system sets this field for you. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors.
  final LabelSelector? selector;

  /// suspend specifies whether the Job controller should create Pods or not. If a Job is created with suspend set to true, no Pods are created by the Job controller. If a Job is suspended after creation (i.e. the flag goes from false to true), the Job controller will delete all active Pods associated with this Job. Users must design their workload to gracefully handle this. Suspending a Job will reset the StartTime field of the Job, effectively resetting the ActiveDeadlineSeconds timer too. Defaults to false.
  final bool? suspend;

  /// Describes the pod that will be created when executing a job. The only allowed template.spec.restartPolicy values are "Never" or "OnFailure". More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/.
  final PodTemplateSpec template;

  /// ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes.
  final int? ttlSecondsAfterFinished;

  /// Converts a [JobSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempActiveDeadlineSeconds = activeDeadlineSeconds;
    final tempBackoffLimit = backoffLimit;
    final tempCompletionMode = completionMode;
    final tempCompletions = completions;
    final tempManualSelector = manualSelector;
    final tempParallelism = parallelism;
    final tempPodFailurePolicy = podFailurePolicy;
    final tempSelector = selector;
    final tempSuspend = suspend;
    final tempTemplate = template;
    final tempTtlSecondsAfterFinished = ttlSecondsAfterFinished;

    if (tempActiveDeadlineSeconds != null) {
      jsonData['activeDeadlineSeconds'] = tempActiveDeadlineSeconds;
    }

    if (tempBackoffLimit != null) {
      jsonData['backoffLimit'] = tempBackoffLimit;
    }

    if (tempCompletionMode != null) {
      jsonData['completionMode'] = tempCompletionMode;
    }

    if (tempCompletions != null) {
      jsonData['completions'] = tempCompletions;
    }

    if (tempManualSelector != null) {
      jsonData['manualSelector'] = tempManualSelector;
    }

    if (tempParallelism != null) {
      jsonData['parallelism'] = tempParallelism;
    }

    if (tempPodFailurePolicy != null) {
      jsonData['podFailurePolicy'] = tempPodFailurePolicy.toJson();
    }

    if (tempSelector != null) {
      jsonData['selector'] = tempSelector.toJson();
    }

    if (tempSuspend != null) {
      jsonData['suspend'] = tempSuspend;
    }

    jsonData['template'] = tempTemplate.toJson();

    if (tempTtlSecondsAfterFinished != null) {
      jsonData['ttlSecondsAfterFinished'] = tempTtlSecondsAfterFinished;
    }

    return jsonData;
  }
}
