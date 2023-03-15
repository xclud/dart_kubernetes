// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// ReplicaSetSpec is the specification of a ReplicaSet.
class ReplicaSetSpec {
  /// Default constructor.
  const ReplicaSetSpec({
    this.minReadySeconds,
    this.replicas,
    required this.selector,
    this.template,
  });

  /// Creates a [ReplicaSetSpec] from JSON data.
  factory ReplicaSetSpec.fromJson(Map<String, dynamic> json) {
    final tempMinReadySecondsJson = json['minReadySeconds'];
    final tempReplicasJson = json['replicas'];
    final tempSelectorJson = json['selector'];
    final tempTemplateJson = json['template'];

    final tempMinReadySeconds = tempMinReadySecondsJson;
    final tempReplicas = tempReplicasJson;
    final tempSelector = LabelSelector.fromJson(tempSelectorJson);
    final tempTemplate = tempTemplateJson != null
        ? PodTemplateSpec.fromJson(tempTemplateJson)
        : null;

    return ReplicaSetSpec(
      minReadySeconds: tempMinReadySeconds,
      replicas: tempReplicas,
      selector: tempSelector,
      template: tempTemplate,
    );
  }

  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final int? minReadySeconds;

  /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller.
  final int? replicas;

  /// Selector is a label query over pods that should match the replica count. Label keys and values that must match in order to be controlled by this replica set. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors.
  final LabelSelector selector;

  /// Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template.
  final PodTemplateSpec? template;

  /// Converts a [ReplicaSetSpec] instance to JSON data.
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

    jsonData['selector'] = tempSelector.toJson();

    if (tempTemplate != null) {
      jsonData['template'] = tempTemplate.toJson();
    }

    return jsonData;
  }
}
