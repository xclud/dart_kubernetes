import 'package:kubernetes/src/generated/api/authorization/v1/non_resource_rule.dart';
import 'package:kubernetes/src/generated/api/authorization/v1/resource_rule.dart';

/// SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
class SubjectRulesReviewStatus {
  /// The main constructor.
  const SubjectRulesReviewStatus({
    this.evaluationError,
    required this.incomplete,
    required this.nonResourceRules,
    required this.resourceRules,
  });

  /// Creates a SubjectRulesReviewStatus from JSON data.
  SubjectRulesReviewStatus.fromJson(Map<String, dynamic> json)
      : this(
          evaluationError: json['evaluationError'],
          incomplete: json['incomplete'],
          nonResourceRules: json['nonResourceRules'] != null
              ? NonResourceRule.listFromJson(
                  (json['nonResourceRules'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : [],
          resourceRules: json['resourceRules'] != null
              ? ResourceRule.listFromJson((json['resourceRules'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of SubjectRulesReviewStatus from JSON data.
  static List<SubjectRulesReviewStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SubjectRulesReviewStatus.fromJson(e)).toList();
  }

  /// Converts a SubjectRulesReviewStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (evaluationError != null) {
      jsonData['evaluationError'] = evaluationError!;
    }
    jsonData['incomplete'] = incomplete;
    jsonData['nonResourceRules'] =
        nonResourceRules.map((item) => item.toJson()).toList();
    jsonData['resourceRules'] =
        resourceRules.map((item) => item.toJson()).toList();

    return jsonData;
  }

  /// EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  final String? evaluationError;

  /// Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  final bool incomplete;

  /// NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final List<NonResourceRule> nonResourceRules;

  /// ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final List<ResourceRule> resourceRules;
}
