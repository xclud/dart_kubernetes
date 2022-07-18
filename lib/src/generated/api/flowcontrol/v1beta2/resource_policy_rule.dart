/// ResourcePolicyRule is a predicate that matches some resource requests, testing the request's verb and the target resource. A ResourcePolicyRule matches a resource request if and only if: (a) at least one member of verbs matches the request, (b) at least one member of apiGroups matches the request, (c) at least one member of resources matches the request, and (d) either (d1) the request does not specify a namespace (i.e., `Namespace==""`) and clusterScope is true or (d2) the request specifies a namespace and least one member of namespaces matches the request's namespace.
class ResourcePolicyRule {
  /// The main constructor.
  const ResourcePolicyRule({
    required this.apiGroups,
    this.clusterScope,
    this.namespaces,
    required this.resources,
    required this.verbs,
  });

  /// Creates a ResourcePolicyRule from JSON data.
  ResourcePolicyRule.fromJson(Map<String, dynamic> json)
      : this(
          apiGroups: json['apiGroups'] != null
              ? List<String>.from(json['apiGroups'])
              : [],
          clusterScope: json['clusterScope'],
          namespaces: json['namespaces'] != null
              ? List<String>.from(json['namespaces'])
              : null,
          resources: json['resources'] != null
              ? List<String>.from(json['resources'])
              : [],
          verbs: json['verbs'] != null ? List<String>.from(json['verbs']) : [],
        );

  /// Creates a list of ResourcePolicyRule from JSON data.
  static List<ResourcePolicyRule> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourcePolicyRule.fromJson(e)).toList();
  }

  /// Converts a ResourcePolicyRule instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['apiGroups'] = apiGroups;
    if (clusterScope != null) {
      jsonData['clusterScope'] = clusterScope!;
    }
    if (namespaces != null) {
      jsonData['namespaces'] = namespaces!;
    }
    jsonData['resources'] = resources;
    jsonData['verbs'] = verbs;

    return jsonData;
  }

  /// `apiGroups` is a list of matching API groups and may not be empty. "*" matches all API groups and, if present, must be the only entry. Required.
  final List<String> apiGroups;

  /// `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
  final bool? clusterScope;

  /// `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains "*".  Note that "*" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
  final List<String>? namespaces;

  /// `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ "services", "nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.
  final List<String> resources;

  /// `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if present, must be the only entry. Required.
  final List<String> verbs;
}
