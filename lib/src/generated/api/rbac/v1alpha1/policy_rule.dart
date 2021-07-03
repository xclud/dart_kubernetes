/// PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
class PolicyRule {
  /// The main constructor.
  const PolicyRule({
    this.apiGroups,
    this.nonResourceURLs,
    this.resourceNames,
    this.resources,
    required this.verbs,
  });

  /// Creates a PolicyRule from JSON data.
  PolicyRule.fromJson(Map<String, dynamic> json)
      : this(
          apiGroups: json['apiGroups'] != null
              ? List<String>.from(json['apiGroups'])
              : null,
          nonResourceURLs: json['nonResourceURLs'] != null
              ? List<String>.from(json['nonResourceURLs'])
              : null,
          resourceNames: json['resourceNames'] != null
              ? List<String>.from(json['resourceNames'])
              : null,
          resources: json['resources'] != null
              ? List<String>.from(json['resources'])
              : null,
          verbs: json['verbs'] != null ? List<String>.from(json['verbs']) : [],
        );

  /// Creates a list of PolicyRule from JSON data.
  static List<PolicyRule> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PolicyRule.fromJson(e)).toList();
  }

  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
  final List<String>? apiGroups;

  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as "/api"),  but not both.
  final List<String>? nonResourceURLs;

  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  final List<String>? resourceNames;

  /// Resources is a list of resources this rule applies to. '*' represents all resources.
  final List<String>? resources;

  /// Verbs is a list of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule. '*' represents all verbs.
  final List<String> verbs;
}
