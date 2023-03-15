// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.flowcontrol.v1beta2;

/// NonResourcePolicyRule is a predicate that matches non-resource requests according to their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if and only if both (a) at least one member of verbs matches the request and (b) at least one member of nonResourceURLs matches the request.
class NonResourcePolicyRule {
  /// Default constructor.
  const NonResourcePolicyRule({
    required this.nonResourceURLs,
    required this.verbs,
  });

  /// Creates a [NonResourcePolicyRule] from JSON data.
  factory NonResourcePolicyRule.fromJson(Map<String, dynamic> json) {
    final tempNonResourceURLsJson = json['nonResourceURLs'];
    final tempVerbsJson = json['verbs'];

    final tempNonResourceURLs = tempNonResourceURLsJson;
    final tempVerbs = tempVerbsJson;

    return NonResourcePolicyRule(
      nonResourceURLs: tempNonResourceURLs,
      verbs: tempVerbs,
    );
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

  /// Converts a [NonResourcePolicyRule] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNonResourceURLs = nonResourceURLs;
    final tempVerbs = verbs;

    jsonData['nonResourceURLs'] = tempNonResourceURLs;

    jsonData['verbs'] = tempVerbs;

    return jsonData;
  }
}
