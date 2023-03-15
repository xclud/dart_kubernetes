// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// DeploymentSpec is the specification of the desired behavior of the Deployment.
class DeploymentSpec {
  /// Default constructor.
  const DeploymentSpec({
    this.minReadySeconds,
    this.paused,
    this.progressDeadlineSeconds,
    this.replicas,
    this.revisionHistoryLimit,
    required this.selector,
    this.strategy,
    required this.template,
  });

  /// Creates a [DeploymentSpec] from JSON data.
  factory DeploymentSpec.fromJson(Map<String, dynamic> json) {
    final tempMinReadySecondsJson = json['minReadySeconds'];
    final tempPausedJson = json['paused'];
    final tempProgressDeadlineSecondsJson = json['progressDeadlineSeconds'];
    final tempReplicasJson = json['replicas'];
    final tempRevisionHistoryLimitJson = json['revisionHistoryLimit'];
    final tempSelectorJson = json['selector'];
    final tempStrategyJson = json['strategy'];
    final tempTemplateJson = json['template'];

    final tempMinReadySeconds = tempMinReadySecondsJson;
    final tempPaused = tempPausedJson;
    final tempProgressDeadlineSeconds = tempProgressDeadlineSecondsJson;
    final tempReplicas = tempReplicasJson;
    final tempRevisionHistoryLimit = tempRevisionHistoryLimitJson;
    final tempSelector = LabelSelector.fromJson(tempSelectorJson);
    final tempStrategy = tempStrategyJson != null
        ? DeploymentStrategy.fromJson(tempStrategyJson)
        : null;
    final tempTemplate = PodTemplateSpec.fromJson(tempTemplateJson);

    return DeploymentSpec(
      minReadySeconds: tempMinReadySeconds,
      paused: tempPaused,
      progressDeadlineSeconds: tempProgressDeadlineSeconds,
      replicas: tempReplicas,
      revisionHistoryLimit: tempRevisionHistoryLimit,
      selector: tempSelector,
      strategy: tempStrategy,
      template: tempTemplate,
    );
  }

  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final int? minReadySeconds;

  /// Indicates that the deployment is paused.
  final bool? paused;

  /// The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  final int? progressDeadlineSeconds;

  /// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  final int? replicas;

  /// The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final int? revisionHistoryLimit;

  /// Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels.
  final LabelSelector selector;

  /// The deployment strategy to use to replace existing pods with new ones.
  final DeploymentStrategy? strategy;

  /// Template describes the pods that will be created.
  final PodTemplateSpec template;

  /// Converts a [DeploymentSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMinReadySeconds = minReadySeconds;
    final tempPaused = paused;
    final tempProgressDeadlineSeconds = progressDeadlineSeconds;
    final tempReplicas = replicas;
    final tempRevisionHistoryLimit = revisionHistoryLimit;
    final tempSelector = selector;
    final tempStrategy = strategy;
    final tempTemplate = template;

    if (tempMinReadySeconds != null) {
      jsonData['minReadySeconds'] = tempMinReadySeconds;
    }

    if (tempPaused != null) {
      jsonData['paused'] = tempPaused;
    }

    if (tempProgressDeadlineSeconds != null) {
      jsonData['progressDeadlineSeconds'] = tempProgressDeadlineSeconds;
    }

    if (tempReplicas != null) {
      jsonData['replicas'] = tempReplicas;
    }

    if (tempRevisionHistoryLimit != null) {
      jsonData['revisionHistoryLimit'] = tempRevisionHistoryLimit;
    }

    jsonData['selector'] = tempSelector.toJson();

    if (tempStrategy != null) {
      jsonData['strategy'] = tempStrategy.toJson();
    }

    jsonData['template'] = tempTemplate.toJson();

    return jsonData;
  }
}
