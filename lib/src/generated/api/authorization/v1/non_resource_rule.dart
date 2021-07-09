/// NonResourceRule holds information that describes a rule for the non-resource.
class NonResourceRule {
  /// The main constructor.
  const NonResourceRule({
    this.nonResourceURLs,
    required this.verbs,
  });

  /// Creates a NonResourceRule from JSON data.
  NonResourceRule.fromJson(Map<String, dynamic> json)
      : this(
          nonResourceURLs: json['nonResourceURLs'] != null
              ? List<String>.from(json['nonResourceURLs'])
              : null,
          verbs: json['verbs'] != null ? List<String>.from(json['verbs']) : [],
        );

  /// Creates a list of NonResourceRule from JSON data.
  static List<NonResourceRule> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NonResourceRule.fromJson(e)).toList();
  }

  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
  final List<String>? nonResourceURLs;

  /// Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
  final List<String> verbs;
}
