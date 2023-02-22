
/// NamedRuleWithOperations is a tuple of Operations and Resources with ResourceNames.
class NamedRuleWithOperations {
  /// The main constructor.
  const NamedRuleWithOperations({
    this.apiGroups,
    this.apiVersions,
    this.operations,
    this.resourceNames,
    this.resources,
    this.scope,
  });

  /// Creates a NamedRuleWithOperations from JSON data.
  NamedRuleWithOperations.fromJson(Map<String, dynamic> json)
      : this(
          apiGroups: json['apiGroups'] != null ? List<String>.from(json['apiGroups']) : null,
          apiVersions: json['apiVersions'] != null ? List<String>.from(json['apiVersions']) : null,
          operations: json['operations'] != null ? List<String>.from(json['operations']) : null,
          resourceNames: json['resourceNames'] != null ? List<String>.from(json['resourceNames']) : null,
          resources: json['resources'] != null ? List<String>.from(json['resources']) : null,
          scope: json['scope'],
        );

  /// Creates a list of NamedRuleWithOperations from JSON data.
  static List<NamedRuleWithOperations> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NamedRuleWithOperations.fromJson(e)).toList();
  }

  /// Converts a NamedRuleWithOperations instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiGroups != null) { jsonData['apiGroups'] = apiGroups!; }
    if(apiVersions != null) { jsonData['apiVersions'] = apiVersions!; }
    if(operations != null) { jsonData['operations'] = operations!; }
    if(resourceNames != null) { jsonData['resourceNames'] = resourceNames!; }
    if(resources != null) { jsonData['resources'] = resources!; }
    if(scope != null) { jsonData['scope'] = scope!; }
    

    return jsonData;
  }


  /// APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
  final List<String>? apiGroups;

  /// APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
  final List<String>? apiVersions;

  /// Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required.
  final List<String>? operations;

  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  final List<String>? resourceNames;

  /// Resources is a list of resources this rule applies to.
/// 
/// For example: 'pods' means pods. 'pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.
/// 
/// If wildcard is present, the validation rule will ensure resources do not overlap with each other.
/// 
/// Depending on the enclosing object, subresources might not be allowed. Required.
  final List<String>? resources;

  /// Scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*" "Cluster" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. "Namespaced" means that only namespaced resources will match this rule. "*" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is "*".
  final String? scope;
}
