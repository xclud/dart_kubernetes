import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/status_details.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// Status is a return value for calls that don't return other objects.
class Status {
  /// The main constructor.
  const Status({
    this.apiVersion,
    this.code,
    this.details,
    this.kind,
    this.message,
    this.metadata,
    this.reason,
    this.status,
  });

  /// Creates a Status from JSON data.
  Status.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          code: json['code'],
          details: json['details'] != null
              ? StatusDetails.fromJson(json['details'])
              : null,
          kind: json['kind'],
          message: json['message'],
          metadata: json['metadata'] != null
              ? ListMeta.fromJson(json['metadata'])
              : null,
          reason: json['reason'],
          status: json['status'],
        );

  /// Creates a list of Status from JSON data.
  static List<Status> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Status.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Suggested HTTP return code for this status, 0 if not set.
  final int? code;

  /// Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  final StatusDetails? details;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// A human-readable description of the status of this operation.
  final String? message;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final ListMeta? metadata;

  /// A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  final String? reason;

  /// Status of the operation. One of: "Success" or "Failure". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final String? status;
}
