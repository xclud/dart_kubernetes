// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.flowcontrol.v1beta3;

/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
class PriorityLevelConfigurationSpec {
  /// Default constructor.
  const PriorityLevelConfigurationSpec({
    this.limited,
    required this.type,
  });

  /// Creates a [PriorityLevelConfigurationSpec] from JSON data.
  factory PriorityLevelConfigurationSpec.fromJson(Map<String, dynamic> json) {
    final tempLimitedJson = json['limited'];
    final tempTypeJson = json['type'];

    final tempLimited = tempLimitedJson != null
        ? LimitedPriorityLevelConfiguration.fromJson(tempLimitedJson)
        : null;
    final tempType = tempTypeJson;

    return PriorityLevelConfigurationSpec(
      limited: tempLimited,
      type: tempType,
    );
  }

  /// `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  final LimitedPriorityLevelConfiguration? limited;

  /// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  final String type;

  /// Converts a [PriorityLevelConfigurationSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLimited = limited;
    final tempType = type;

    if (tempLimited != null) {
      jsonData['limited'] = tempLimited.toJson();
    }

    jsonData['type'] = tempType;

    return jsonData;
  }
}
