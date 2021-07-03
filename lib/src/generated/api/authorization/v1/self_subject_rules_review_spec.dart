/// SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
class SelfSubjectRulesReviewSpec {
  /// The main constructor.
  const SelfSubjectRulesReviewSpec({
    this.namespace,
  });

  /// Creates a SelfSubjectRulesReviewSpec from JSON data.
  SelfSubjectRulesReviewSpec.fromJson(Map<String, dynamic> json)
      : this(
          namespace: json['namespace'],
        );

  /// Creates a list of SelfSubjectRulesReviewSpec from JSON data.
  static List<SelfSubjectRulesReviewSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SelfSubjectRulesReviewSpec.fromJson(e)).toList();
  }

  /// Namespace to evaluate rules for. Required.
  final String? namespace;
}
