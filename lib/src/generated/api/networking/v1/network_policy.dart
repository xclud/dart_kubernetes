import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/networking/v1/network_policy_spec.dart';

/// NetworkPolicy describes what network traffic is allowed for a set of Pods.
class NetworkPolicy {
  /// The main constructor.
  const NetworkPolicy({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  /// Creates a NetworkPolicy from JSON data.
  NetworkPolicy.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? NetworkPolicySpec.fromJson(json['spec'])
              : null,
        );

  /// Creates a list of NetworkPolicy from JSON data.
  static List<NetworkPolicy> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NetworkPolicy.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Specification of the desired behavior for this NetworkPolicy.
  final NetworkPolicySpec? spec;
}
