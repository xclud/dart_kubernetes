import 'package:kubernetes/src/generated/api/core/v1/client_ip_config.dart';

/// SessionAffinityConfig represents the configurations of session affinity.
class SessionAffinityConfig {
  /// The main constructor.
  const SessionAffinityConfig({
    this.clientIP,
  });

  /// Creates a SessionAffinityConfig from JSON data.
  SessionAffinityConfig.fromJson(Map<String, dynamic> json)
      : this(
          clientIP: json['clientIP'] != null
              ? ClientIPConfig.fromJson(json['clientIP'])
              : null,
        );

  /// Creates a list of SessionAffinityConfig from JSON data.
  static List<SessionAffinityConfig> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SessionAffinityConfig.fromJson(e)).toList();
  }

  /// ClientIP contains the configurations of Client IP based session affinity.
  final ClientIPConfig? clientIP;
}
