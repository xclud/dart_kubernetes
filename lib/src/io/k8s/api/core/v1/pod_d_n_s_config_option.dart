// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// PodDNSConfigOption defines DNS resolver options of a pod.
class PodDNSConfigOption {
  /// Default constructor.
  const PodDNSConfigOption({
    this.name,
    this.value,
  });

  /// Creates a [PodDNSConfigOption] from JSON data.
  factory PodDNSConfigOption.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempValueJson = json['value'];

    final String? tempName = tempNameJson;
    final String? tempValue = tempValueJson;

    return PodDNSConfigOption(
      name: tempName,
      value: tempValue,
    );
  }

  /// Required.
  final String? name;

  /// Value.
  final String? value;

  /// Converts a [PodDNSConfigOption] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempValue = value;

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempValue != null) {
      jsonData['value'] = tempValue;
    }

    return jsonData;
  }
}
