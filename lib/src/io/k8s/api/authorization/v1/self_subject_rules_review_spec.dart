// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authorization_v1.dart';

/// SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
class SelfSubjectRulesReviewSpec {
  /// Default constructor.
  const SelfSubjectRulesReviewSpec({
    this.namespace,
  });

  /// Creates a [SelfSubjectRulesReviewSpec] from JSON data.
  factory SelfSubjectRulesReviewSpec.fromJson(Map<String, dynamic> json) {
    final tempNamespaceJson = json['namespace'];

    final String? tempNamespace = tempNamespaceJson;

    return SelfSubjectRulesReviewSpec(
      namespace: tempNamespace,
    );
  }

  /// Namespace to evaluate rules for. Required.
  final String? namespace;

  /// Converts a [SelfSubjectRulesReviewSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNamespace = namespace;

    if (tempNamespace != null) {
      jsonData['namespace'] = tempNamespace;
    }

    return jsonData;
  }
}
