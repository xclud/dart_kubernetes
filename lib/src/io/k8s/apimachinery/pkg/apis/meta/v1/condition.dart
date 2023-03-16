// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// Condition contains details for one aspect of the current state of this API Resource.
class Condition {
  /// Default constructor.
  const Condition({
    required this.lastTransitionTime,
    required this.message,
    this.observedGeneration,
    required this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a [Condition] from JSON data.
  factory Condition.fromJson(Map<String, dynamic> json) {
    final tempLastTransitionTimeJson = json['lastTransitionTime'];
    final tempMessageJson = json['message'];
    final tempObservedGenerationJson = json['observedGeneration'];
    final tempReasonJson = json['reason'];
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final DateTime tempLastTransitionTime =
        DateTime.parse(tempLastTransitionTimeJson);
    final String tempMessage = tempMessageJson;
    final int? tempObservedGeneration = tempObservedGenerationJson;
    final String tempReason = tempReasonJson;
    final String tempStatus = tempStatusJson;
    final String tempType = tempTypeJson;

    return Condition(
      lastTransitionTime: tempLastTransitionTime,
      message: tempMessage,
      observedGeneration: tempObservedGeneration,
      reason: tempReason,
      status: tempStatus,
      type: tempType,
    );
  }

  /// lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
  final DateTime lastTransitionTime;

  /// message is a human readable message indicating details about the transition. This may be an empty string.
  final String message;

  /// observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  final int? observedGeneration;

  /// reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
  final String reason;

  /// status of the condition, one of True, False, Unknown.
  final String status;

  /// type of condition in CamelCase or in foo.example.com/CamelCase.
  final String type;

  /// Converts a [Condition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLastTransitionTime = lastTransitionTime;
    final tempMessage = message;
    final tempObservedGeneration = observedGeneration;
    final tempReason = reason;
    final tempStatus = status;
    final tempType = type;

    jsonData['lastTransitionTime'] = tempLastTransitionTime;

    jsonData['message'] = tempMessage;

    if (tempObservedGeneration != null) {
      jsonData['observedGeneration'] = tempObservedGeneration;
    }

    jsonData['reason'] = tempReason;

    jsonData['status'] = tempStatus;

    jsonData['type'] = tempType;

    return jsonData;
  }
}
