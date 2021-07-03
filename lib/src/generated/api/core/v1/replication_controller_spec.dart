import 'package:kubernetes/src/generated/api/core/v1/pod_template_spec.dart';

/// ReplicationControllerSpec is the specification of a replication controller.
class ReplicationControllerSpec {
  /// The main constructor.
  const ReplicationControllerSpec({
    this.minReadySeconds,
    this.replicas,
    this.selector,
    this.template,
  });

  /// Creates a ReplicationControllerSpec from JSON data.
  ReplicationControllerSpec.fromJson(Map<String, dynamic> json)
      : this(
          minReadySeconds: json['minReadySeconds'],
          replicas: json['replicas'],
          selector: json['selector'],
          template: json['template'] != null
              ? PodTemplateSpec.fromJson(json['template'])
              : null,
        );

  /// Creates a list of ReplicationControllerSpec from JSON data.
  static List<ReplicationControllerSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ReplicationControllerSpec.fromJson(e)).toList();
  }

  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  final int? minReadySeconds;

  /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  final int? replicas;

  /// Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final Object? selector;

  /// Template is the object that describes the pod that will be created if insufficient replicas are detected. This takes precedence over a TemplateRef. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  final PodTemplateSpec? template;
}
