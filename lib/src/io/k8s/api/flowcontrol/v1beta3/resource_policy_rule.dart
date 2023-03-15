// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.flowcontrol.v1beta3;

/// ResourcePolicyRule is a predicate that matches some resource requests, testing the request's verb and the target resource. A ResourcePolicyRule matches a resource request if and only if: (a) at least one member of verbs matches the request, (b) at least one member of apiGroups matches the request, (c) at least one member of resources matches the request, and (d) either (d1) the request does not specify a namespace (i.e., `Namespace==""`) and clusterScope is true or (d2) the request specifies a namespace and least one member of namespaces matches the request's namespace.
class ResourcePolicyRule {
  /// Default constructor.
  const ResourcePolicyRule({
    required this.apiGroups,
    this.clusterScope,
    this.namespaces,
    required this.resources,
    required this.verbs,
  });

  /// Creates a [ResourcePolicyRule] from JSON data.
  factory ResourcePolicyRule.fromJson(Map<String, dynamic> json) {
    final tempApiGroupsJson = json['apiGroups'];
    final tempClusterScopeJson = json['clusterScope'];
    final tempNamespacesJson = json['namespaces'];
    final tempResourcesJson = json['resources'];
    final tempVerbsJson = json['verbs'];

    final tempApiGroups = tempApiGroupsJson;
    final tempClusterScope = tempClusterScopeJson;
    final tempNamespaces = tempNamespacesJson;
    final tempResources = tempResourcesJson;
    final tempVerbs = tempVerbsJson;

    return ResourcePolicyRule(
      apiGroups: tempApiGroups,
      clusterScope: tempClusterScope,
      namespaces: tempNamespaces,
      resources: tempResources,
      verbs: tempVerbs,
    );
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

  /// Converts a [ResourcePolicyRule] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroups = apiGroups;
    final tempClusterScope = clusterScope;
    final tempNamespaces = namespaces;
    final tempResources = resources;
    final tempVerbs = verbs;

    jsonData['apiGroups'] = tempApiGroups;

    if (tempClusterScope != null) {
      jsonData['clusterScope'] = tempClusterScope;
    }

    if (tempNamespaces != null) {
      jsonData['namespaces'] = tempNamespaces;
    }

    jsonData['resources'] = tempResources;

    jsonData['verbs'] = tempVerbs;

    return jsonData;
  }
}
