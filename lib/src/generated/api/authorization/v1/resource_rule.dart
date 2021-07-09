/// ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
class ResourceRule {
  /// The main constructor.
  const ResourceRule({
    this.apiGroups,
    this.resourceNames,
    this.resources,
    required this.verbs,
  });

  /// Creates a ResourceRule from JSON data.
  ResourceRule.fromJson(Map<String, dynamic> json)
      : this(
          apiGroups: json['apiGroups'] != null
              ? List<String>.from(json['apiGroups'])
              : null,
          resourceNames: json['resourceNames'] != null
              ? List<String>.from(json['resourceNames'])
              : null,
          resources: json['resources'] != null
              ? List<String>.from(json['resources'])
              : null,
          verbs: json['verbs'] != null ? List<String>.from(json['verbs']) : [],
        );

  /// Creates a list of ResourceRule from JSON data.
  static List<ResourceRule> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceRule.fromJson(e)).toList();
  }

  /// Converts a ResourceRule instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiGroups != null) {
      jsonData['apiGroups'] = apiGroups!;
    }
    if (resourceNames != null) {
      jsonData['resourceNames'] = resourceNames!;
    }
    if (resources != null) {
      jsonData['resources'] = resources!;
    }
    jsonData['verbs'] = verbs;

    return jsonData;
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
}
