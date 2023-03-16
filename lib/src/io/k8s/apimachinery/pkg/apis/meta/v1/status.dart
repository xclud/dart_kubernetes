// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// Status is a return value for calls that don't return other objects.
class Status {
  /// Default constructor.
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

  /// Creates a [Status] from JSON data.
  factory Status.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempCodeJson = json['code'];
    final tempDetailsJson = json['details'];
    final tempKindJson = json['kind'];
    final tempMessageJson = json['message'];
    final tempMetadataJson = json['metadata'];
    final tempReasonJson = json['reason'];
    final tempStatusJson = json['status'];

    final String? tempApiVersion = tempApiVersionJson;
    final int? tempCode = tempCodeJson;
    final StatusDetails? tempDetails = tempDetailsJson != null
        ? StatusDetails.fromJson(tempDetailsJson)
        : null;
    final String? tempKind = tempKindJson;
    final String? tempMessage = tempMessageJson;
    final ListMeta? tempMetadata =
        tempMetadataJson != null ? ListMeta.fromJson(tempMetadataJson) : null;
    final String? tempReason = tempReasonJson;
    final String? tempStatus = tempStatusJson;

    return Status(
      apiVersion: tempApiVersion,
      code: tempCode,
      details: tempDetails,
      kind: tempKind,
      message: tempMessage,
      metadata: tempMetadata,
      reason: tempReason,
      status: tempStatus,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Suggested HTTP return code for this status, 0 if not set.
  final int? code;

  /// Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  final StatusDetails? details;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// A human-readable description of the status of this operation.
  final String? message;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final ListMeta? metadata;

  /// A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  final String? reason;

  /// Status of the operation. One of: "Success" or "Failure". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final String? status;

  /// Converts a [Status] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempCode = code;
    final tempDetails = details;
    final tempKind = kind;
    final tempMessage = message;
    final tempMetadata = metadata;
    final tempReason = reason;
    final tempStatus = status;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempCode != null) {
      jsonData['code'] = tempCode;
    }

    if (tempDetails != null) {
      jsonData['details'] = tempDetails.toJson();
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    if (tempStatus != null) {
      jsonData['status'] = tempStatus;
    }

    return jsonData;
  }
}
