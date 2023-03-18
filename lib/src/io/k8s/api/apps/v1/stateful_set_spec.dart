// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// A StatefulSetSpec is the specification of a StatefulSet.
class StatefulSetSpec {
  /// Default constructor.
  const StatefulSetSpec({
    this.minReadySeconds,
    this.ordinals,
    this.persistentVolumeClaimRetentionPolicy,
    this.podManagementPolicy,
    this.replicas,
    this.revisionHistoryLimit,
    required this.selector,
    required this.serviceName,
    required this.template,
    this.updateStrategy,
    this.volumeClaimTemplates,
  });

  /// Creates a [StatefulSetSpec] from JSON data.
  factory StatefulSetSpec.fromJson(Map<String, dynamic> json) {
    final tempMinReadySecondsJson = json['minReadySeconds'];
    final tempOrdinalsJson = json['ordinals'];
    final tempPersistentVolumeClaimRetentionPolicyJson =
        json['persistentVolumeClaimRetentionPolicy'];
    final tempPodManagementPolicyJson = json['podManagementPolicy'];
    final tempReplicasJson = json['replicas'];
    final tempRevisionHistoryLimitJson = json['revisionHistoryLimit'];
    final tempSelectorJson = json['selector'];
    final tempServiceNameJson = json['serviceName'];
    final tempTemplateJson = json['template'];
    final tempUpdateStrategyJson = json['updateStrategy'];
    final tempVolumeClaimTemplatesJson = json['volumeClaimTemplates'];

    final int? tempMinReadySeconds = tempMinReadySecondsJson;
    final StatefulSetOrdinals? tempOrdinals = tempOrdinalsJson != null
        ? StatefulSetOrdinals.fromJson(tempOrdinalsJson)
        : null;
    final StatefulSetPersistentVolumeClaimRetentionPolicy?
        tempPersistentVolumeClaimRetentionPolicy =
        tempPersistentVolumeClaimRetentionPolicyJson != null
            ? StatefulSetPersistentVolumeClaimRetentionPolicy.fromJson(
                tempPersistentVolumeClaimRetentionPolicyJson)
            : null;
    final String? tempPodManagementPolicy = tempPodManagementPolicyJson;
    final int? tempReplicas = tempReplicasJson;
    final int? tempRevisionHistoryLimit = tempRevisionHistoryLimitJson;
    final LabelSelector tempSelector = LabelSelector.fromJson(tempSelectorJson);
    final String tempServiceName = tempServiceNameJson;
    final PodTemplateSpec tempTemplate =
        PodTemplateSpec.fromJson(tempTemplateJson);
    final StatefulSetUpdateStrategy? tempUpdateStrategy =
        tempUpdateStrategyJson != null
            ? StatefulSetUpdateStrategy.fromJson(tempUpdateStrategyJson)
            : null;

    final List<PersistentVolumeClaim>? tempVolumeClaimTemplates =
        tempVolumeClaimTemplatesJson != null
            ? List<dynamic>.from(tempVolumeClaimTemplatesJson)
                .map(
                  (e) => PersistentVolumeClaim.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return StatefulSetSpec(
      minReadySeconds: tempMinReadySeconds,
      ordinals: tempOrdinals,
      persistentVolumeClaimRetentionPolicy:
          tempPersistentVolumeClaimRetentionPolicy,
      podManagementPolicy: tempPodManagementPolicy,
      replicas: tempReplicas,
      revisionHistoryLimit: tempRevisionHistoryLimit,
      selector: tempSelector,
      serviceName: tempServiceName,
      template: tempTemplate,
      updateStrategy: tempUpdateStrategy,
      volumeClaimTemplates: tempVolumeClaimTemplates,
    );
  }

  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final int? minReadySeconds;

  /// ordinals controls the numbering of replica indices in a StatefulSet. The default ordinals behavior assigns a "0" index to the first replica and increments the index by one for each additional replica requested. Using the ordinals field requires the StatefulSetStartOrdinal feature gate to be enabled, which is beta.
  final StatefulSetOrdinals? ordinals;

  /// persistentVolumeClaimRetentionPolicy describes the lifecycle of persistent volume claims created from volumeClaimTemplates. By default, all persistent volume claims are created as needed and retained until manually deleted. This policy allows the lifecycle to be altered, for example by deleting persistent volume claims when their stateful set is deleted, or when their pod is scaled down. This requires the StatefulSetAutoDeletePVC feature gate to be enabled, which is alpha.  +optional.
  final StatefulSetPersistentVolumeClaimRetentionPolicy?
      persistentVolumeClaimRetentionPolicy;

  /// podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
  final String? podManagementPolicy;

  /// replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  final int? replicas;

  /// revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
  final int? revisionHistoryLimit;

  /// selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors.
  final LabelSelector selector;

  /// serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
  final String serviceName;

  /// template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet. Each pod will be named with the format <statefulsetname>-<podindex>. For example, a pod in a StatefulSet named "web" with index number "3" would be named "web-3". The only allowed template.spec.restartPolicy value is "Always".
  final PodTemplateSpec template;

  /// updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
  final StatefulSetUpdateStrategy? updateStrategy;

  /// volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  final List<PersistentVolumeClaim>? volumeClaimTemplates;

  /// Converts a [StatefulSetSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMinReadySeconds = minReadySeconds;
    final tempOrdinals = ordinals;
    final tempPersistentVolumeClaimRetentionPolicy =
        persistentVolumeClaimRetentionPolicy;
    final tempPodManagementPolicy = podManagementPolicy;
    final tempReplicas = replicas;
    final tempRevisionHistoryLimit = revisionHistoryLimit;
    final tempSelector = selector;
    final tempServiceName = serviceName;
    final tempTemplate = template;
    final tempUpdateStrategy = updateStrategy;
    final tempVolumeClaimTemplates = volumeClaimTemplates;

    if (tempMinReadySeconds != null) {
      jsonData['minReadySeconds'] = tempMinReadySeconds;
    }

    if (tempOrdinals != null) {
      jsonData['ordinals'] = tempOrdinals.toJson();
    }

    if (tempPersistentVolumeClaimRetentionPolicy != null) {
      jsonData['persistentVolumeClaimRetentionPolicy'] =
          tempPersistentVolumeClaimRetentionPolicy.toJson();
    }

    if (tempPodManagementPolicy != null) {
      jsonData['podManagementPolicy'] = tempPodManagementPolicy;
    }

    if (tempReplicas != null) {
      jsonData['replicas'] = tempReplicas;
    }

    if (tempRevisionHistoryLimit != null) {
      jsonData['revisionHistoryLimit'] = tempRevisionHistoryLimit;
    }

    jsonData['selector'] = tempSelector.toJson();

    jsonData['serviceName'] = tempServiceName;

    jsonData['template'] = tempTemplate.toJson();

    if (tempUpdateStrategy != null) {
      jsonData['updateStrategy'] = tempUpdateStrategy.toJson();
    }

    if (tempVolumeClaimTemplates != null) {
      jsonData['volumeClaimTemplates'] = tempVolumeClaimTemplates;
    }

    return jsonData;
  }
}
