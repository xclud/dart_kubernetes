// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Sysctl defines a kernel parameter to be set.
class Sysctl {
  /// Default constructor.
  const Sysctl({
    required this.name,
    required this.value,
  });

  /// Creates a [Sysctl] from JSON data.
  factory Sysctl.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempValueJson = json['value'];

    final String tempName = tempNameJson;
    final String tempValue = tempValueJson;

    return Sysctl(
      name: tempName,
      value: tempValue,
    );
  }

  /// Name of a property to set.
  final String name;

  /// Value of a property to set.
  final String value;

  /// Converts a [Sysctl] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempValue = value;

    jsonData['name'] = tempName;

    jsonData['value'] = tempValue;

    return jsonData;
  }
}
