// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// SessionAffinityConfig represents the configurations of session affinity.
class SessionAffinityConfig {
  /// Default constructor.
  const SessionAffinityConfig({
    this.clientIP,
  });

  /// Creates a [SessionAffinityConfig] from JSON data.
  factory SessionAffinityConfig.fromJson(Map<String, dynamic> json) {
    final tempClientIPJson = json['clientIP'];

    final ClientIPConfig? tempClientIP = tempClientIPJson != null
        ? ClientIPConfig.fromJson(tempClientIPJson)
        : null;

    return SessionAffinityConfig(
      clientIP: tempClientIP,
    );
  }

  /// clientIP contains the configurations of Client IP based session affinity.
  final ClientIPConfig? clientIP;

  /// Converts a [SessionAffinityConfig] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempClientIP = clientIP;

    if (tempClientIP != null) {
      jsonData['clientIP'] = tempClientIP.toJson();
    }

    return jsonData;
  }
}
