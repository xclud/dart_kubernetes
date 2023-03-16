// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.authorization.v1;

/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface.
class ResourceAttributes {
  /// Default constructor.
  const ResourceAttributes({
    this.group,
    this.name,
    this.namespace,
    this.resource,
    this.subresource,
    this.verb,
    this.version,
  });

  /// Creates a [ResourceAttributes] from JSON data.
  factory ResourceAttributes.fromJson(Map<String, dynamic> json) {
    final tempGroupJson = json['group'];
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];
    final tempResourceJson = json['resource'];
    final tempSubresourceJson = json['subresource'];
    final tempVerbJson = json['verb'];
    final tempVersionJson = json['version'];

    final String? tempGroup = tempGroupJson;
    final String? tempName = tempNameJson;
    final String? tempNamespace = tempNamespaceJson;
    final String? tempResource = tempResourceJson;
    final String? tempSubresource = tempSubresourceJson;
    final String? tempVerb = tempVerbJson;
    final String? tempVersion = tempVersionJson;

    return ResourceAttributes(
      group: tempGroup,
      name: tempName,
      namespace: tempNamespace,
      resource: tempResource,
      subresource: tempSubresource,
      verb: tempVerb,
      version: tempVersion,
    );
  }

  /// Group is the API Group of the Resource.  "*" means all.
  final String? group;

  /// Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
  final String? name;

  /// Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview.
  final String? namespace;

  /// Resource is one of the existing resource types.  "*" means all.
  final String? resource;

  /// Subresource is one of the existing resource types.  "" means none.
  final String? subresource;

  /// Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  final String? verb;

  /// Version is the API Version of the Resource.  "*" means all.
  final String? version;

  /// Converts a [ResourceAttributes] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempGroup = group;
    final tempName = name;
    final tempNamespace = namespace;
    final tempResource = resource;
    final tempSubresource = subresource;
    final tempVerb = verb;
    final tempVersion = version;

    if (tempGroup != null) {
      jsonData['group'] = tempGroup;
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempNamespace != null) {
      jsonData['namespace'] = tempNamespace;
    }

    if (tempResource != null) {
      jsonData['resource'] = tempResource;
    }

    if (tempSubresource != null) {
      jsonData['subresource'] = tempSubresource;
    }

    if (tempVerb != null) {
      jsonData['verb'] = tempVerb;
    }

    if (tempVersion != null) {
      jsonData['version'] = tempVersion;
    }

    return jsonData;
  }
}
