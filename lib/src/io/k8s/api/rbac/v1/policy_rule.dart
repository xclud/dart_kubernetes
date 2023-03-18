// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.rbac.v1;

/// PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
class PolicyRule {
  /// Default constructor.
  const PolicyRule({
    this.apiGroups,
    this.nonResourceURLs,
    this.resourceNames,
    this.resources,
    required this.verbs,
  });

  /// Creates a [PolicyRule] from JSON data.
  factory PolicyRule.fromJson(Map<String, dynamic> json) {
    final tempApiGroupsJson = json['apiGroups'];
    final tempNonResourceURLsJson = json['nonResourceURLs'];
    final tempResourceNamesJson = json['resourceNames'];
    final tempResourcesJson = json['resources'];
    final tempVerbsJson = json['verbs'];

    final List<String>? tempApiGroups =
        tempApiGroupsJson != null ? List<String>.from(tempApiGroupsJson) : null;
    final List<String>? tempNonResourceURLs = tempNonResourceURLsJson != null
        ? List<String>.from(tempNonResourceURLsJson)
        : null;
    final List<String>? tempResourceNames = tempResourceNamesJson != null
        ? List<String>.from(tempResourceNamesJson)
        : null;
    final List<String>? tempResources =
        tempResourcesJson != null ? List<String>.from(tempResourcesJson) : null;
    final List<String> tempVerbs = List<String>.from(tempVerbsJson);

    return PolicyRule(
      apiGroups: tempApiGroups,
      nonResourceURLs: tempNonResourceURLs,
      resourceNames: tempResourceNames,
      resources: tempResources,
      verbs: tempVerbs,
    );
  }

  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. "" represents the core API group and "*" represents all API groups.
  final List<String>? apiGroups;

  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as "/api"),  but not both.
  final List<String>? nonResourceURLs;

  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  final List<String>? resourceNames;

  /// Resources is a list of resources this rule applies to. '*' represents all resources.
  final List<String>? resources;

  /// Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
  final List<String> verbs;

  /// Converts a [PolicyRule] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroups = apiGroups;
    final tempNonResourceURLs = nonResourceURLs;
    final tempResourceNames = resourceNames;
    final tempResources = resources;
    final tempVerbs = verbs;

    if (tempApiGroups != null) {
      jsonData['apiGroups'] = tempApiGroups;
    }

    if (tempNonResourceURLs != null) {
      jsonData['nonResourceURLs'] = tempNonResourceURLs;
    }

    if (tempResourceNames != null) {
      jsonData['resourceNames'] = tempResourceNames;
    }

    if (tempResources != null) {
      jsonData['resources'] = tempResources;
    }

    jsonData['verbs'] = tempVerbs;

    return jsonData;
  }
}
