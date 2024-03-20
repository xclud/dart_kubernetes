// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authorization_v1.dart';

/// SubjectAccessReviewStatus.
class SubjectAccessReviewStatus {
  /// Default constructor.
  const SubjectAccessReviewStatus({
    required this.allowed,
    this.denied,
    this.evaluationError,
    this.reason,
  });

  /// Creates a [SubjectAccessReviewStatus] from JSON data.
  factory SubjectAccessReviewStatus.fromJson(Map<String, dynamic> json) {
    final tempAllowedJson = json['allowed'];
    final tempDeniedJson = json['denied'];
    final tempEvaluationErrorJson = json['evaluationError'];
    final tempReasonJson = json['reason'];

    final bool tempAllowed = tempAllowedJson;
    final bool? tempDenied = tempDeniedJson;
    final String? tempEvaluationError = tempEvaluationErrorJson;
    final String? tempReason = tempReasonJson;

    return SubjectAccessReviewStatus(
      allowed: tempAllowed,
      denied: tempDenied,
      evaluationError: tempEvaluationError,
      reason: tempReason,
    );
  }

  /// Allowed is required. True if the action would be allowed, false otherwise.
  final bool allowed;

  /// Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
  final bool? denied;

  /// EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
  final String? evaluationError;

  /// Reason is optional.  It indicates why a request was allowed or denied.
  final String? reason;

  /// Converts a [SubjectAccessReviewStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAllowed = allowed;
    final tempDenied = denied;
    final tempEvaluationError = evaluationError;
    final tempReason = reason;

    jsonData['allowed'] = tempAllowed;

    if (tempDenied != null) {
      jsonData['denied'] = tempDenied;
    }

    if (tempEvaluationError != null) {
      jsonData['evaluationError'] = tempEvaluationError;
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    return jsonData;
  }
}
