import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/label_selector.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/pod_template_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/api/apps/v1/daemon_set_update_strategy.dart';

/// DaemonSetSpec is the specification of a daemon set.
class DaemonSetSpec {
  /// The main constructor.
  const DaemonSetSpec({
    this.minReadySeconds,
    this.revisionHistoryLimit,
    required this.selector,
    required this.template,
    this.updateStrategy,
  });

  /// Creates a DaemonSetSpec from JSON data.
  DaemonSetSpec.fromJson(Map<String, dynamic> json)
      : this(
          minReadySeconds: json['minReadySeconds'],
          revisionHistoryLimit: json['revisionHistoryLimit'],
          selector: LabelSelector.fromJson(json['selector']),
          template: PodTemplateSpec.fromJson(json['template']),
          updateStrategy: json['updateStrategy'] != null
              ? DaemonSetUpdateStrategy.fromJson(json['updateStrategy'])
              : null,
        );

  /// Creates a list of DaemonSetSpec from JSON data.
  static List<DaemonSetSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DaemonSetSpec.fromJson(e)).toList();
  }

  /// Converts a DaemonSetSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (minReadySeconds != null) {
      jsonData['minReadySeconds'] = minReadySeconds!;
    }
    if (revisionHistoryLimit != null) {
      jsonData['revisionHistoryLimit'] = revisionHistoryLimit!;
    }
    jsonData['selector'] = selector.toJson();
    jsonData['template'] = template.toJson();
    if (updateStrategy != null) {
      jsonData['updateStrategy'] = updateStrategy!.toJson();
    }

    return jsonData;
  }

  /// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final int? minReadySeconds;

  /// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final int? revisionHistoryLimit;

  /// A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors.
  final LabelSelector selector;

  /// An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template.
  final PodTemplateSpec template;

  /// An update strategy to replace existing DaemonSet pods with new pods.
  final DaemonSetUpdateStrategy? updateStrategy;
}
