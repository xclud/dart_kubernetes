// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authorization_v1.dart';

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set.
class SelfSubjectAccessReviewSpec {
  /// Default constructor.
  const SelfSubjectAccessReviewSpec({
    this.nonResourceAttributes,
    this.resourceAttributes,
  });

  /// Creates a [SelfSubjectAccessReviewSpec] from JSON data.
  factory SelfSubjectAccessReviewSpec.fromJson(Map<String, dynamic> json) {
    final tempNonResourceAttributesJson = json['nonResourceAttributes'];
    final tempResourceAttributesJson = json['resourceAttributes'];

    final NonResourceAttributes? tempNonResourceAttributes =
        tempNonResourceAttributesJson != null
            ? NonResourceAttributes.fromJson(tempNonResourceAttributesJson)
            : null;
    final ResourceAttributes? tempResourceAttributes =
        tempResourceAttributesJson != null
            ? ResourceAttributes.fromJson(tempResourceAttributesJson)
            : null;

    return SelfSubjectAccessReviewSpec(
      nonResourceAttributes: tempNonResourceAttributes,
      resourceAttributes: tempResourceAttributes,
    );
  }

  /// NonResourceAttributes describes information for a non-resource access request.
  final NonResourceAttributes? nonResourceAttributes;

  /// ResourceAuthorizationAttributes describes information for a resource access request.
  final ResourceAttributes? resourceAttributes;

  /// Converts a [SelfSubjectAccessReviewSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNonResourceAttributes = nonResourceAttributes;
    final tempResourceAttributes = resourceAttributes;

    if (tempNonResourceAttributes != null) {
      jsonData['nonResourceAttributes'] = tempNonResourceAttributes.toJson();
    }

    if (tempResourceAttributes != null) {
      jsonData['resourceAttributes'] = tempResourceAttributes.toJson();
    }

    return jsonData;
  }
}
