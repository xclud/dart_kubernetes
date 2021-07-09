import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/pod_security_policy_spec.dart';

/// PodSecurityPolicy governs the ability to make requests that affect the Security Context that will be applied to a pod and container. Deprecated in 1.21.
class PodSecurityPolicy {
  /// The main constructor.
  const PodSecurityPolicy({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  /// Creates a PodSecurityPolicy from JSON data.
  PodSecurityPolicy.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? PodSecurityPolicySpec.fromJson(json['spec'])
              : null,
        );

  /// Creates a list of PodSecurityPolicy from JSON data.
  static List<PodSecurityPolicy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodSecurityPolicy.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec defines the policy enforced.
  final PodSecurityPolicySpec? spec;
}
