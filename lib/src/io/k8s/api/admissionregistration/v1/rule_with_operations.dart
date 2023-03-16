// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1;

/// RuleWithOperations is a tuple of Operations and Resources. It is recommended to make sure that all the tuple expansions are valid.
class RuleWithOperations {
  /// Default constructor.
  const RuleWithOperations({
    this.apiGroups,
    this.apiVersions,
    this.operations,
    this.resources,
    this.scope,
  });

  /// Creates a [RuleWithOperations] from JSON data.
  factory RuleWithOperations.fromJson(Map<String, dynamic> json) {
    final tempApiGroupsJson = json['apiGroups'];
    final tempApiVersionsJson = json['apiVersions'];
    final tempOperationsJson = json['operations'];
    final tempResourcesJson = json['resources'];
    final tempScopeJson = json['scope'];

    final List<String>? tempApiGroups = tempApiGroupsJson;
    final List<String>? tempApiVersions = tempApiVersionsJson;
    final List<String>? tempOperations = tempOperationsJson;
    final List<String>? tempResources = tempResourcesJson;
    final String? tempScope = tempScopeJson;

    return RuleWithOperations(
      apiGroups: tempApiGroups,
      apiVersions: tempApiVersions,
      operations: tempOperations,
      resources: tempResources,
      scope: tempScope,
    );
  }

  /// APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
  final List<String>? apiGroups;

  /// APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
  final List<String>? apiVersions;

  /// Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required.
  final List<String>? operations;

  /// Resources is a list of resources this rule applies to.
  ///
  /// For example: 'pods' means pods. 'pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.
  ///
  /// If wildcard is present, the validation rule will ensure resources do not overlap with each other.
  ///
  /// Depending on the enclosing object, subresources might not be allowed. Required.
  final List<String>? resources;

  /// scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*" "Cluster" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. "Namespaced" means that only namespaced resources will match this rule. "*" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is "*".
  final String? scope;

  /// Converts a [RuleWithOperations] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroups = apiGroups;
    final tempApiVersions = apiVersions;
    final tempOperations = operations;
    final tempResources = resources;
    final tempScope = scope;

    if (tempApiGroups != null) {
      jsonData['apiGroups'] = tempApiGroups;
    }

    if (tempApiVersions != null) {
      jsonData['apiVersions'] = tempApiVersions;
    }

    if (tempOperations != null) {
      jsonData['operations'] = tempOperations;
    }

    if (tempResources != null) {
      jsonData['resources'] = tempResources;
    }

    if (tempScope != null) {
      jsonData['scope'] = tempScope;
    }

    return jsonData;
  }
}
