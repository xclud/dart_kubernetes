import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/authorization/v1/self_subject_access_review_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/api/authorization/v1/subject_access_review_status.dart';

/// SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means "in all namespaces".  Self is a special case, because users should always be able to check whether they can perform an action.
class SelfSubjectAccessReview {
  /// The main constructor.
  const SelfSubjectAccessReview({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a SelfSubjectAccessReview from JSON data.
  SelfSubjectAccessReview.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: SelfSubjectAccessReviewSpec.fromJson(json['spec']),
          status: json['status'] != null
              ? SubjectAccessReviewStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of SelfSubjectAccessReview from JSON data.
  static List<SelfSubjectAccessReview> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SelfSubjectAccessReview.fromJson(e)).toList();
  }

  /// Converts a SelfSubjectAccessReview instance to JSON data.
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
    jsonData['spec'] = spec.toJson();
    if (status != null) {
      jsonData['status'] = status!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec holds information about the request being evaluated.  user and groups must be empty.
  final SelfSubjectAccessReviewSpec spec;

  /// Status is filled in by the server and indicates whether the request is allowed or not.
  final SubjectAccessReviewStatus? status;
}
