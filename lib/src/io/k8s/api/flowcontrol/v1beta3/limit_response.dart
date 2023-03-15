// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.flowcontrol.v1beta3;

/// LimitResponse defines how to handle requests that can not be executed right now.
class LimitResponse {
  /// Default constructor.
  const LimitResponse({
    this.queuing,
    required this.type,
  });

  /// Creates a [LimitResponse] from JSON data.
  factory LimitResponse.fromJson(Map<String, dynamic> json) {
    final tempQueuingJson = json['queuing'];
    final tempTypeJson = json['type'];

    final tempQueuing = tempQueuingJson != null
        ? QueuingConfiguration.fromJson(tempQueuingJson)
        : null;
    final tempType = tempTypeJson;

    return LimitResponse(
      queuing: tempQueuing,
      type: tempType,
    );
  }

  /// `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  final QueuingConfiguration? queuing;

  /// `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  final String type;

  /// Converts a [LimitResponse] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempQueuing = queuing;
    final tempType = type;

    if (tempQueuing != null) {
      jsonData['queuing'] = tempQueuing.toJson();
    }

    jsonData['type'] = tempType;

    return jsonData;
  }
}
