import 'package:kubernetes/src/generated/kubernetes/api/authorization/v1/non_resource_attributes.dart';
import 'package:kubernetes/src/generated/kubernetes/api/authorization/v1/resource_attributes.dart';

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set.
class SelfSubjectAccessReviewSpec {
  /// The main constructor.
  const SelfSubjectAccessReviewSpec({
    this.nonResourceAttributes,
    this.resourceAttributes,
  });

  /// Creates a SelfSubjectAccessReviewSpec from JSON data.
  SelfSubjectAccessReviewSpec.fromJson(Map<String, dynamic> json)
      : this(
          nonResourceAttributes: json['nonResourceAttributes'] != null
              ? NonResourceAttributes.fromJson(json['nonResourceAttributes'])
              : null,
          resourceAttributes: json['resourceAttributes'] != null
              ? ResourceAttributes.fromJson(json['resourceAttributes'])
              : null,
        );

  /// Creates a list of SelfSubjectAccessReviewSpec from JSON data.
  static List<SelfSubjectAccessReviewSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SelfSubjectAccessReviewSpec.fromJson(e)).toList();
  }

  /// Converts a SelfSubjectAccessReviewSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (nonResourceAttributes != null) {
      jsonData['nonResourceAttributes'] = nonResourceAttributes!.toJson();
    }
    if (resourceAttributes != null) {
      jsonData['resourceAttributes'] = resourceAttributes!.toJson();
    }

    return jsonData;
  }

  /// NonResourceAttributes describes information for a non-resource access request.
  final NonResourceAttributes? nonResourceAttributes;

  /// ResourceAuthorizationAttributes describes information for a resource access request.
  final ResourceAttributes? resourceAttributes;
}
