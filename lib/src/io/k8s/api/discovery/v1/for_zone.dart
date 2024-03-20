// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../discovery_v1.dart';

/// ForZone provides information about which zones should consume this endpoint.
class ForZone {
  /// Default constructor.
  const ForZone({
    required this.name,
  });

  /// Creates a [ForZone] from JSON data.
  factory ForZone.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];

    final String tempName = tempNameJson;

    return ForZone(
      name: tempName,
    );
  }

  /// name represents the name of the zone.
  final String name;

  /// Converts a [ForZone] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
