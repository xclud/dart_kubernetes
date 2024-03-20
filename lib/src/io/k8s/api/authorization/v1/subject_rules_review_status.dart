// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authorization_v1.dart';

/// SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
class SubjectRulesReviewStatus {
  /// Default constructor.
  const SubjectRulesReviewStatus({
    this.evaluationError,
    required this.incomplete,
    required this.nonResourceRules,
    required this.resourceRules,
  });

  /// Creates a [SubjectRulesReviewStatus] from JSON data.
  factory SubjectRulesReviewStatus.fromJson(Map<String, dynamic> json) {
    final tempEvaluationErrorJson = json['evaluationError'];
    final tempIncompleteJson = json['incomplete'];
    final tempNonResourceRulesJson = json['nonResourceRules'];
    final tempResourceRulesJson = json['resourceRules'];

    final String? tempEvaluationError = tempEvaluationErrorJson;
    final bool tempIncomplete = tempIncompleteJson;

    final List<NonResourceRule> tempNonResourceRules =
        List<dynamic>.from(tempNonResourceRulesJson)
            .map(
              (e) => NonResourceRule.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList();

    final List<ResourceRule> tempResourceRules =
        List<dynamic>.from(tempResourceRulesJson)
            .map(
              (e) => ResourceRule.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList();

    return SubjectRulesReviewStatus(
      evaluationError: tempEvaluationError,
      incomplete: tempIncomplete,
      nonResourceRules: tempNonResourceRules,
      resourceRules: tempResourceRules,
    );
  }

  /// EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  final String? evaluationError;

  /// Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  final bool incomplete;

  /// NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final List<NonResourceRule> nonResourceRules;

  /// ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final List<ResourceRule> resourceRules;

  /// Converts a [SubjectRulesReviewStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempEvaluationError = evaluationError;
    final tempIncomplete = incomplete;
    final tempNonResourceRules = nonResourceRules;
    final tempResourceRules = resourceRules;

    if (tempEvaluationError != null) {
      jsonData['evaluationError'] = tempEvaluationError;
    }

    jsonData['incomplete'] = tempIncomplete;

    jsonData['nonResourceRules'] =
        tempNonResourceRules.map((e) => e.toJson()).toList(growable: false);

    jsonData['resourceRules'] =
        tempResourceRules.map((e) => e.toJson()).toList(growable: false);

    return jsonData;
  }
}
