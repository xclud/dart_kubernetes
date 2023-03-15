// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// G R P C Action.
class GRPCAction {
  /// Default constructor.
  const GRPCAction({
    required this.port,
    this.service,
  });

  /// Creates a [GRPCAction] from JSON data.
  factory GRPCAction.fromJson(Map<String, dynamic> json) {
    final tempPortJson = json['port'];
    final tempServiceJson = json['service'];

    final tempPort = tempPortJson;
    final tempService = tempServiceJson;

    return GRPCAction(
      port: tempPort,
      service: tempService,
    );
  }

  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final int port;

  /// Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  ///
  /// If this is not specified, the default behavior is defined by gRPC.
  final String? service;

  /// Converts a [GRPCAction] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPort = port;
    final tempService = service;

    jsonData['port'] = tempPort;

    if (tempService != null) {
      jsonData['service'] = tempService;
    }

    return jsonData;
  }
}
