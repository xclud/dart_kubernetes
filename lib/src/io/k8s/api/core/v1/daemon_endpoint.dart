// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// DaemonEndpoint contains information about a single Daemon endpoint.
class DaemonEndpoint {
  /// Default constructor.
  const DaemonEndpoint({
    required this.port,
  });

  /// Creates a [DaemonEndpoint] from JSON data.
  factory DaemonEndpoint.fromJson(Map<String, dynamic> json) {
    final tempPortJson = json['port'];

    final tempPort = tempPortJson;

    return DaemonEndpoint(
      port: tempPort,
    );
  }

  /// Port number of the given endpoint.
  final int port;

  /// Converts a [DaemonEndpoint] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPort = port;

    jsonData['Port'] = tempPort;

    return jsonData;
  }
}
