// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
class VolumeNodeAffinity {
  /// Default constructor.
  const VolumeNodeAffinity({
    this.required,
  });

  /// Creates a [VolumeNodeAffinity] from JSON data.
  factory VolumeNodeAffinity.fromJson(Map<String, dynamic> json) {
    final tempRequiredJson = json['required'];

    final tempRequired = tempRequiredJson != null
        ? NodeSelector.fromJson(tempRequiredJson)
        : null;

    return VolumeNodeAffinity(
      required: tempRequired,
    );
  }

  /// required specifies hard node constraints that must be met.
  final NodeSelector? required;

  /// Converts a [VolumeNodeAffinity] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempRequired = required;

    if (tempRequired != null) {
      jsonData['required'] = tempRequired.toJson();
    }

    return jsonData;
  }
}
