import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';
import 'package:kubernetes/src/generated/api/core/v1/pod_template_spec.dart';
import 'package:kubernetes/src/generated/api/apps/v1/stateful_set_update_strategy.dart';
import 'package:kubernetes/src/generated/api/core/v1/persistent_volume_claim.dart';

/// A StatefulSetSpec is the specification of a StatefulSet.
class StatefulSetSpec {
  /// The main constructor.
  const StatefulSetSpec({
    this.minReadySeconds,
    this.podManagementPolicy,
    this.replicas,
    this.revisionHistoryLimit,
    required this.selector,
    required this.serviceName,
    required this.template,
    this.updateStrategy,
    this.volumeClaimTemplates,
  });

  /// Creates a StatefulSetSpec from JSON data.
  StatefulSetSpec.fromJson(Map<String, dynamic> json)
      : this(
          minReadySeconds: json['minReadySeconds'],
          podManagementPolicy: json['podManagementPolicy'],
          replicas: json['replicas'],
          revisionHistoryLimit: json['revisionHistoryLimit'],
          selector: LabelSelector.fromJson(json['selector']),
          serviceName: json['serviceName'],
          template: PodTemplateSpec.fromJson(json['template']),
          updateStrategy: json['updateStrategy'] != null
              ? StatefulSetUpdateStrategy.fromJson(json['updateStrategy'])
              : null,
          volumeClaimTemplates: json['volumeClaimTemplates'] != null
              ? PersistentVolumeClaim.listFromJson(
                  (json['volumeClaimTemplates'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of StatefulSetSpec from JSON data.
  static List<StatefulSetSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StatefulSetSpec.fromJson(e)).toList();
  }

  /// Converts a StatefulSetSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (minReadySeconds != null) {
      jsonData['minReadySeconds'] = minReadySeconds!;
    }
    if (podManagementPolicy != null) {
      jsonData['podManagementPolicy'] = podManagementPolicy!;
    }
    if (replicas != null) {
      jsonData['replicas'] = replicas!;
    }
    if (revisionHistoryLimit != null) {
      jsonData['revisionHistoryLimit'] = revisionHistoryLimit!;
    }
    jsonData['selector'] = selector.toJson();
    jsonData['serviceName'] = serviceName;
    jsonData['template'] = template.toJson();
    if (updateStrategy != null) {
      jsonData['updateStrategy'] = updateStrategy!.toJson();
    }
    if (volumeClaimTemplates != null) {
      jsonData['volumeClaimTemplates'] =
          volumeClaimTemplates!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready) This is an alpha field and requires enabling StatefulSetMinReadySeconds feature gate.
  final int? minReadySeconds;

  /// PodManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
  final String? podManagementPolicy;

  /// Replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  final int? replicas;

  /// RevisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
  final int? revisionHistoryLimit;

  /// Selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors.
  final LabelSelector selector;

  /// ServiceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
  final String serviceName;

  /// Template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
  final PodTemplateSpec template;

  /// UpdateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
  final StatefulSetUpdateStrategy? updateStrategy;

  /// VolumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  final List<PersistentVolumeClaim>? volumeClaimTemplates;
}
