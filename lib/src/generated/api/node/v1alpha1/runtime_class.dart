import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/node/v1alpha1/runtime_class_spec.dart';

/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are (currently) manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
class RuntimeClass {
  /// The main constructor.
  const RuntimeClass({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
  });

  /// Creates a RuntimeClass from JSON data.
  RuntimeClass.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: RuntimeClassSpec.fromJson(json['spec']),
        );

  /// Creates a list of RuntimeClass from JSON data.
  static List<RuntimeClass> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => RuntimeClass.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Specification of the RuntimeClass More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final RuntimeClassSpec spec;
}
