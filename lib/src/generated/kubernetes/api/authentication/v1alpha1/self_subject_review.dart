import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/authentication/v1alpha1/self_subject_review_status.dart';

/// SelfSubjectReview contains the user information that the kube-apiserver has about the user making this request. When using impersonation, users will receive the user info of the user being impersonated.
class SelfSubjectReview {
  /// The main constructor.
  const SelfSubjectReview({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.status,
  });

  /// Creates a SelfSubjectReview from JSON data.
  SelfSubjectReview.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          status: json['status'] != null
              ? SelfSubjectReviewStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of SelfSubjectReview from JSON data.
  static List<SelfSubjectReview> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SelfSubjectReview.fromJson(e)).toList();
  }

  /// Converts a SelfSubjectReview instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }
    if (status != null) {
      jsonData['status'] = status!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Status is filled in by the server with the user attributes.
  final SelfSubjectReviewStatus? status;
}
