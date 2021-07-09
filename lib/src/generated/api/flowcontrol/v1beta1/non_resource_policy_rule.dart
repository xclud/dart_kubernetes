/// NonResourcePolicyRule is a predicate that matches non-resource requests according to their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if and only if both (a) at least one member of verbs matches the request and (b) at least one member of nonResourceURLs matches the request.
class NonResourcePolicyRule {
  /// The main constructor.
  const NonResourcePolicyRule({
    required this.nonResourceURLs,
    required this.verbs,
  });

  /// Creates a NonResourcePolicyRule from JSON data.
  NonResourcePolicyRule.fromJson(Map<String, dynamic> json)
      : this(
          nonResourceURLs: json['nonResourceURLs'] != null
              ? List<String>.from(json['nonResourceURLs'])
              : [],
          verbs: json['verbs'] != null ? List<String>.from(json['verbs']) : [],
        );

  /// Creates a list of NonResourcePolicyRule from JSON data.
  static List<NonResourcePolicyRule> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NonResourcePolicyRule.fromJson(e)).toList();
  }

  /// Converts a NonResourcePolicyRule instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['nonResourceURLs'] = nonResourceURLs;
    jsonData['verbs'] = verbs;

    return jsonData;
  }

  /// `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:
  ///   - "/healthz" is legal
  ///   - "/hea*" is illegal
  ///   - "/hea" is legal but matches nothing
  ///   - "/hea/*" also matches nothing
  ///   - "/healthz/*" matches all per-component health checks.
  /// "*" matches all non-resource urls. if it is present, it must be the only entry. Required.
  final List<String> nonResourceURLs;

  /// `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is present, it must be the only entry. Required.
  final List<String> verbs;
}
