// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// DaemonSetSpec is the specification of a daemon set.
class DaemonSetSpec {
  /// Default constructor.
  const DaemonSetSpec({
    this.minReadySeconds,
    this.revisionHistoryLimit,
    required this.selector,
    required this.template,
    this.updateStrategy,
  });

  /// Creates a [DaemonSetSpec] from JSON data.
  factory DaemonSetSpec.fromJson(Map<String, dynamic> json) {
    final tempMinReadySecondsJson = json['minReadySeconds'];
    final tempRevisionHistoryLimitJson = json['revisionHistoryLimit'];
    final tempSelectorJson = json['selector'];
    final tempTemplateJson = json['template'];
    final tempUpdateStrategyJson = json['updateStrategy'];

    final int? tempMinReadySeconds = tempMinReadySecondsJson;
    final int? tempRevisionHistoryLimit = tempRevisionHistoryLimitJson;
    final LabelSelector tempSelector = LabelSelector.fromJson(tempSelectorJson);
    final PodTemplateSpec tempTemplate =
        PodTemplateSpec.fromJson(tempTemplateJson);
    final DaemonSetUpdateStrategy? tempUpdateStrategy =
        tempUpdateStrategyJson != null
            ? DaemonSetUpdateStrategy.fromJson(tempUpdateStrategyJson)
            : null;

    return DaemonSetSpec(
      minReadySeconds: tempMinReadySeconds,
      revisionHistoryLimit: tempRevisionHistoryLimit,
      selector: tempSelector,
      template: tempTemplate,
      updateStrategy: tempUpdateStrategy,
    );
  }

  /// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final int? minReadySeconds;

  /// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final int? revisionHistoryLimit;

  /// A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors.
  final LabelSelector selector;

  /// An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). The only allowed template.spec.restartPolicy value is "Always". More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template.
  final PodTemplateSpec template;

  /// An update strategy to replace existing DaemonSet pods with new pods.
  final DaemonSetUpdateStrategy? updateStrategy;

  /// Converts a [DaemonSetSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMinReadySeconds = minReadySeconds;
    final tempRevisionHistoryLimit = revisionHistoryLimit;
    final tempSelector = selector;
    final tempTemplate = template;
    final tempUpdateStrategy = updateStrategy;

    if (tempMinReadySeconds != null) {
      jsonData['minReadySeconds'] = tempMinReadySeconds;
    }

    if (tempRevisionHistoryLimit != null) {
      jsonData['revisionHistoryLimit'] = tempRevisionHistoryLimit;
    }

    jsonData['selector'] = tempSelector.toJson();

    jsonData['template'] = tempTemplate.toJson();

    if (tempUpdateStrategy != null) {
      jsonData['updateStrategy'] = tempUpdateStrategy.toJson();
    }

    return jsonData;
  }
}
