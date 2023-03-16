// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// PodSchedulingGate is associated to a Pod to guard its scheduling.
class PodSchedulingGate {
  /// Default constructor.
  const PodSchedulingGate({
    required this.name,
  });

  /// Creates a [PodSchedulingGate] from JSON data.
  factory PodSchedulingGate.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];

    final String tempName = tempNameJson;

    return PodSchedulingGate(
      name: tempName,
    );
  }

  /// Name of the scheduling gate. Each scheduling gate must have a unique name field.
  final String name;

  /// Converts a [PodSchedulingGate] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
