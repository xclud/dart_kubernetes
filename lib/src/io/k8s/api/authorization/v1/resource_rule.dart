// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.authorization.v1;

/// ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
class ResourceRule {
  /// Default constructor.
  const ResourceRule({
    this.apiGroups,
    this.resourceNames,
    this.resources,
    required this.verbs,
  });

  /// Creates a [ResourceRule] from JSON data.
  factory ResourceRule.fromJson(Map<String, dynamic> json) {
    final tempApiGroupsJson = json['apiGroups'];
    final tempResourceNamesJson = json['resourceNames'];
    final tempResourcesJson = json['resources'];
    final tempVerbsJson = json['verbs'];

    final tempApiGroups = tempApiGroupsJson;
    final tempResourceNames = tempResourceNamesJson;
    final tempResources = tempResourcesJson;
    final tempVerbs = tempVerbsJson;

    return ResourceRule(
      apiGroups: tempApiGroups,
      resourceNames: tempResourceNames,
      resources: tempResources,
      verbs: tempVerbs,
    );
  }

  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
  final List<String>? apiGroups;

  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
  final List<String>? resourceNames;

  /// Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
  ///  "*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.
  final List<String>? resources;

  /// Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  final List<String> verbs;

  /// Converts a [ResourceRule] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroups = apiGroups;
    final tempResourceNames = resourceNames;
    final tempResources = resources;
    final tempVerbs = verbs;

    if (tempApiGroups != null) {
      jsonData['apiGroups'] = tempApiGroups;
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
