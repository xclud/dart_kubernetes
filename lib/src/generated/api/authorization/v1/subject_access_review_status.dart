/// SubjectAccessReviewStatus
class SubjectAccessReviewStatus {
  /// The main constructor.
  const SubjectAccessReviewStatus({
    required this.allowed,
    this.denied,
    this.evaluationError,
    this.reason,
  });

  /// Creates a SubjectAccessReviewStatus from JSON data.
  SubjectAccessReviewStatus.fromJson(Map<String, dynamic> json)
      : this(
          allowed: json['allowed'],
          denied: json['denied'],
          evaluationError: json['evaluationError'],
          reason: json['reason'],
        );

  /// Creates a list of SubjectAccessReviewStatus from JSON data.
  static List<SubjectAccessReviewStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SubjectAccessReviewStatus.fromJson(e)).toList();
  }

  /// Allowed is required. True if the action would be allowed, false otherwise.
  final bool allowed;

  /// Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
  final bool? denied;

  /// EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
  final String? evaluationError;

  /// Reason is optional.  It indicates why a request was allowed or denied.
  final String? reason;
}
