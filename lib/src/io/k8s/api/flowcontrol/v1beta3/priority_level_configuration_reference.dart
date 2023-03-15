// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.flowcontrol.v1beta3;

/// PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
class PriorityLevelConfigurationReference {
  /// Default constructor.
  const PriorityLevelConfigurationReference({
    required this.name,
  });

  /// Creates a [PriorityLevelConfigurationReference] from JSON data.
  factory PriorityLevelConfigurationReference.fromJson(
      Map<String, dynamic> json) {
    final tempNameJson = json['name'];

    final tempName = tempNameJson;

    return PriorityLevelConfigurationReference(
      name: tempName,
    );
  }

  /// `name` is the name of the priority level configuration being referenced Required.
  final String name;

  /// Converts a [PriorityLevelConfigurationReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
