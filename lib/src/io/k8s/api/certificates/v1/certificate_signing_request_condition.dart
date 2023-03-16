// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.certificates.v1;

/// CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest object.
class CertificateSigningRequestCondition {
  /// Default constructor.
  const CertificateSigningRequestCondition({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a [CertificateSigningRequestCondition] from JSON data.
  factory CertificateSigningRequestCondition.fromJson(
      Map<String, dynamic> json) {
    final tempLastTransitionTimeJson = json['lastTransitionTime'];
    final tempLastUpdateTimeJson = json['lastUpdateTime'];
    final tempMessageJson = json['message'];
    final tempReasonJson = json['reason'];
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final DateTime? tempLastTransitionTime = tempLastTransitionTimeJson != null
        ? DateTime.tryParse(tempLastTransitionTimeJson)
        : null;
    final DateTime? tempLastUpdateTime = tempLastUpdateTimeJson != null
        ? DateTime.tryParse(tempLastUpdateTimeJson)
        : null;
    final String? tempMessage = tempMessageJson;
    final String? tempReason = tempReasonJson;
    final String tempStatus = tempStatusJson;
    final String tempType = tempTypeJson;

    return CertificateSigningRequestCondition(
      lastTransitionTime: tempLastTransitionTime,
      lastUpdateTime: tempLastUpdateTime,
      message: tempMessage,
      reason: tempReason,
      status: tempStatus,
      type: tempType,
    );
  }

  /// lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
  final DateTime? lastTransitionTime;

  /// lastUpdateTime is the time of the last update to this condition.
  final DateTime? lastUpdateTime;

  /// message contains a human readable message with details about the request state.
  final String? message;

  /// reason indicates a brief reason for the request state.
  final String? reason;

  /// status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown".
  final String status;

  /// type of the condition. Known conditions are "Approved", "Denied", and "Failed".
  ///
  /// An "Approved" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.
  ///
  /// A "Denied" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.
  ///
  /// A "Failed" condition is added via the /status subresource, indicating the signer failed to issue the certificate.
  ///
  /// Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.
  ///
  /// Only one condition of a given type is allowed.
  final String type;

  /// Converts a [CertificateSigningRequestCondition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLastTransitionTime = lastTransitionTime;
    final tempLastUpdateTime = lastUpdateTime;
    final tempMessage = message;
    final tempReason = reason;
    final tempStatus = status;
    final tempType = type;

    if (tempLastTransitionTime != null) {
      jsonData['lastTransitionTime'] = tempLastTransitionTime;
    }

    if (tempLastUpdateTime != null) {
      jsonData['lastUpdateTime'] = tempLastUpdateTime;
    }

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    jsonData['status'] = tempStatus;

    jsonData['type'] = tempType;

    return jsonData;
  }
}
