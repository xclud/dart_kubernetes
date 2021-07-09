/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface.
class ResourceAttributes {
  /// The main constructor.
  const ResourceAttributes({
    this.group,
    this.name,
    this.namespace,
    this.resource,
    this.subresource,
    this.verb,
    this.version,
  });

  /// Creates a ResourceAttributes from JSON data.
  ResourceAttributes.fromJson(Map<String, dynamic> json)
      : this(
          group: json['group'],
          name: json['name'],
          namespace: json['namespace'],
          resource: json['resource'],
          subresource: json['subresource'],
          verb: json['verb'],
          version: json['version'],
        );

  /// Creates a list of ResourceAttributes from JSON data.
  static List<ResourceAttributes> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceAttributes.fromJson(e)).toList();
  }

  /// Converts a ResourceAttributes instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (group != null) {
      jsonData['group'] = group!;
    }
    if (name != null) {
      jsonData['name'] = name!;
    }
    if (namespace != null) {
      jsonData['namespace'] = namespace!;
    }
    if (resource != null) {
      jsonData['resource'] = resource!;
    }
    if (subresource != null) {
      jsonData['subresource'] = subresource!;
    }
    if (verb != null) {
      jsonData['verb'] = verb!;
    }
    if (version != null) {
      jsonData['version'] = version!;
    }

    return jsonData;
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
}
