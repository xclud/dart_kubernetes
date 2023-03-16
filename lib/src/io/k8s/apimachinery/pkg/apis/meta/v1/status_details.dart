// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
class StatusDetails {
  /// Default constructor.
  const StatusDetails({
    this.causes,
    this.group,
    this.kind,
    this.name,
    this.retryAfterSeconds,
    this.uid,
  });

  /// Creates a [StatusDetails] from JSON data.
  factory StatusDetails.fromJson(Map<String, dynamic> json) {
    final tempCausesJson = json['causes'];
    final tempGroupJson = json['group'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempRetryAfterSecondsJson = json['retryAfterSeconds'];
    final tempUidJson = json['uid'];

    final List<StatusCause>? tempCauses = tempCausesJson;
    final String? tempGroup = tempGroupJson;
    final String? tempKind = tempKindJson;
    final String? tempName = tempNameJson;
    final int? tempRetryAfterSeconds = tempRetryAfterSecondsJson;
    final String? tempUid = tempUidJson;

    return StatusDetails(
      causes: tempCauses,
      group: tempGroup,
      kind: tempKind,
      name: tempName,
      retryAfterSeconds: tempRetryAfterSeconds,
      uid: tempUid,
    );
  }

  /// The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  final List<StatusCause>? causes;

  /// The group attribute of the resource associated with the status StatusReason.
  final String? group;

  /// The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  final String? name;

  /// If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  final int? retryAfterSeconds;

  /// UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids.
  final String? uid;

  /// Converts a [StatusDetails] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCauses = causes;
    final tempGroup = group;
    final tempKind = kind;
    final tempName = name;
    final tempRetryAfterSeconds = retryAfterSeconds;
    final tempUid = uid;

    if (tempCauses != null) {
      jsonData['causes'] = tempCauses;
    }

    if (tempGroup != null) {
      jsonData['group'] = tempGroup;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempRetryAfterSeconds != null) {
      jsonData['retryAfterSeconds'] = tempRetryAfterSeconds;
    }

    if (tempUid != null) {
      jsonData['uid'] = tempUid;
    }

    return jsonData;
  }
}
