// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ClientIPConfig represents the configurations of Client IP based session affinity.
class ClientIPConfig {
  /// Default constructor.
  const ClientIPConfig({
    this.timeoutSeconds,
  });

  /// Creates a [ClientIPConfig] from JSON data.
  factory ClientIPConfig.fromJson(Map<String, dynamic> json) {
    final tempTimeoutSecondsJson = json['timeoutSeconds'];

    final int? tempTimeoutSeconds = tempTimeoutSecondsJson;

    return ClientIPConfig(
      timeoutSeconds: tempTimeoutSeconds,
    );
  }

  /// timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
  final int? timeoutSeconds;

  /// Converts a [ClientIPConfig] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempTimeoutSeconds = timeoutSeconds;

    if (tempTimeoutSeconds != null) {
      jsonData['timeoutSeconds'] = tempTimeoutSeconds;
    }

    return jsonData;
  }
}
