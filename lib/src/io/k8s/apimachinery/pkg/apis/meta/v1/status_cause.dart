// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
class StatusCause {
  /// Default constructor.
  const StatusCause({
    this.field,
    this.message,
    this.reason,
  });

  /// Creates a [StatusCause] from JSON data.
  factory StatusCause.fromJson(Map<String, dynamic> json) {
    final tempFieldJson = json['field'];
    final tempMessageJson = json['message'];
    final tempReasonJson = json['reason'];

    final String? tempField = tempFieldJson;
    final String? tempMessage = tempMessageJson;
    final String? tempReason = tempReasonJson;

    return StatusCause(
      field: tempField,
      message: tempMessage,
      reason: tempReason,
    );
  }

  /// The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
  ///
  /// Examples:
  ///   "name" - the field "name" on the current resource
  ///   "items\[0\].name" - the field "name" on the first array entry in "items".
  final String? field;

  /// A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
  final String? message;

  /// A machine-readable description of the cause of the error. If this value is empty there is no information available.
  final String? reason;

  /// Converts a [StatusCause] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempField = field;
    final tempMessage = message;
    final tempReason = reason;

    if (tempField != null) {
      jsonData['field'] = tempField;
    }

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    return jsonData;
  }
}
