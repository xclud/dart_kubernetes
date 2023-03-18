// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.authorization.v1;

/// NonResourceRule holds information that describes a rule for the non-resource.
class NonResourceRule {
  /// Default constructor.
  const NonResourceRule({
    this.nonResourceURLs,
    required this.verbs,
  });

  /// Creates a [NonResourceRule] from JSON data.
  factory NonResourceRule.fromJson(Map<String, dynamic> json) {
    final tempNonResourceURLsJson = json['nonResourceURLs'];
    final tempVerbsJson = json['verbs'];

    final List<String>? tempNonResourceURLs = tempNonResourceURLsJson != null
        ? List<String>.from(tempNonResourceURLsJson)
        : null;
    final List<String> tempVerbs = List<String>.from(tempVerbsJson);

    return NonResourceRule(
      nonResourceURLs: tempNonResourceURLs,
      verbs: tempVerbs,
    );
  }

  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
  final List<String>? nonResourceURLs;

  /// Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
  final List<String> verbs;

  /// Converts a [NonResourceRule] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNonResourceURLs = nonResourceURLs;
    final tempVerbs = verbs;

    if (tempNonResourceURLs != null) {
      jsonData['nonResourceURLs'] = tempNonResourceURLs;
    }

    jsonData['verbs'] = tempVerbs;

    return jsonData;
  }
}
