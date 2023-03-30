part of io.istio.v1beta1;

/// Destination rule.
class DestinationRule {
  /// The main constructor.
  const DestinationRule({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a DestinationRule from JSON data.
  DestinationRule.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? DestinationRuleSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? DestinationRuleStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of DestinationRule from JSON data.
  static List<DestinationRule> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DestinationRule.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Spec defines the desired identities of object.
  final DestinationRuleSpec? spec;

  /// Status is the current status of this object.
  final DestinationRuleStatus? status;
}
