// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ReplicationControllerSpec is the specification of a replication controller.
class ReplicationControllerSpec {
  /// Default constructor.
  const ReplicationControllerSpec({
    this.minReadySeconds,
    this.replicas,
    this.selector,
    this.template,
  });

  /// Creates a [ReplicationControllerSpec] from JSON data.
  factory ReplicationControllerSpec.fromJson(Map<String, dynamic> json) {
    final tempMinReadySecondsJson = json['minReadySeconds'];
    final tempReplicasJson = json['replicas'];
    final tempSelectorJson = json['selector'];
    final tempTemplateJson = json['template'];

    final int? tempMinReadySeconds = tempMinReadySecondsJson;
    final int? tempReplicas = tempReplicasJson;

    final Map<String, String>? tempSelector = tempSelectorJson != null
        ? Map<String, String>.from(tempSelectorJson)
        : null;

    final PodTemplateSpec? tempTemplate = tempTemplateJson != null
        ? PodTemplateSpec.fromJson(tempTemplateJson)
        : null;

    return ReplicationControllerSpec(
      minReadySeconds: tempMinReadySeconds,
      replicas: tempReplicas,
      selector: tempSelector,
      template: tempTemplate,
    );
  }

  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final int? minReadySeconds;

  /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller.
  final int? replicas;

  /// Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors.
  final Map<String, String>? selector;

  /// Template is the object that describes the pod that will be created if insufficient replicas are detected. This takes precedence over a TemplateRef. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template.
  final PodTemplateSpec? template;

  /// Converts a [ReplicationControllerSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMinReadySeconds = minReadySeconds;
    final tempReplicas = replicas;
    final tempSelector = selector;
    final tempTemplate = template;

    if (tempMinReadySeconds != null) {
      jsonData['minReadySeconds'] = tempMinReadySeconds;
    }

    if (tempReplicas != null) {
      jsonData['replicas'] = tempReplicas;
    }

    if (tempSelector != null) {
      jsonData['selector'] = tempSelector;
    }

    if (tempTemplate != null) {
      jsonData['template'] = tempTemplate.toJson();
    }

    return jsonData;
  }
}
