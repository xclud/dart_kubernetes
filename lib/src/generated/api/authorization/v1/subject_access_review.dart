import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/authorization/v1/subject_access_review_spec.dart';
import 'package:kubernetes/src/generated/api/authorization/v1/subject_access_review_status.dart';

/// SubjectAccessReview checks whether or not a user or group can perform an action.
class SubjectAccessReview {
  /// The main constructor.
  const SubjectAccessReview({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a SubjectAccessReview from JSON data.
  SubjectAccessReview.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: SubjectAccessReviewSpec.fromJson(json['spec']),
          status: json['status'] != null
              ? SubjectAccessReviewStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of SubjectAccessReview from JSON data.
  static List<SubjectAccessReview> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SubjectAccessReview.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec holds information about the request being evaluated.
  final SubjectAccessReviewSpec spec;

  /// Status is filled in by the server and indicates whether the request is allowed or not.
  final SubjectAccessReviewStatus? status;
}
