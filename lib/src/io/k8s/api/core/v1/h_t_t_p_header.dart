// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// HTTPHeader describes a custom header to be used in HTTP probes.
class HTTPHeader {
  /// Default constructor.
  const HTTPHeader({
    required this.name,
    required this.value,
  });

  /// Creates a [HTTPHeader] from JSON data.
  factory HTTPHeader.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempValueJson = json['value'];

    final tempName = tempNameJson;
    final tempValue = tempValueJson;

    return HTTPHeader(
      name: tempName,
      value: tempValue,
    );
  }

  /// The header field name.
  final String name;

  /// The header field value.
  final String value;

  /// Converts a [HTTPHeader] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempValue = value;

    jsonData['name'] = tempName;

    jsonData['value'] = tempValue;

    return jsonData;
  }
}
