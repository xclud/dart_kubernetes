/// IngressClassParametersReference identifies an API object. This can be used to specify a cluster or namespace-scoped resource.
class IngressClassParametersReference {
  /// The main constructor.
  const IngressClassParametersReference({
    this.apiGroup,
    required this.kind,
    required this.name,
    this.namespace,
    this.scope,
  });

  /// Creates a IngressClassParametersReference from JSON data.
  IngressClassParametersReference.fromJson(Map<String, dynamic> json)
      : this(
          apiGroup: json['apiGroup'],
          kind: json['kind'],
          name: json['name'],
          namespace: json['namespace'],
          scope: json['scope'],
        );

  /// Creates a list of IngressClassParametersReference from JSON data.
  static List<IngressClassParametersReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => IngressClassParametersReference.fromJson(e))
        .toList();
  }

  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final String? apiGroup;

  /// Kind is the type of resource being referenced.
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;

  /// Namespace is the namespace of the resource being referenced. This field is required when scope is set to "Namespace" and must be unset when scope is set to "Cluster".
  final String? namespace;

  /// Scope represents if this refers to a cluster or namespace scoped resource. This may be set to "Cluster" (default) or "Namespace". Field can be enabled with IngressClassNamespacedParams feature gate.
  final String? scope;
}
