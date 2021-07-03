/// CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest object
class CertificateSigningRequestCondition {
  /// The main constructor.
  const CertificateSigningRequestCondition({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a CertificateSigningRequestCondition from JSON data.
  CertificateSigningRequestCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          lastUpdateTime: json['lastUpdateTime'] != null
              ? DateTime.tryParse(json['lastUpdateTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of CertificateSigningRequestCondition from JSON data.
  static List<CertificateSigningRequestCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => CertificateSigningRequestCondition.fromJson(e))
        .toList();
  }

  /// lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
  final DateTime? lastTransitionTime;

  /// lastUpdateTime is the time of the last update to this condition
  final DateTime? lastUpdateTime;

  /// message contains a human readable message with details about the request state
  final String? message;

  /// reason indicates a brief reason for the request state
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
}
