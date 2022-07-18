///
class GRPCAction {
  /// The main constructor.
  const GRPCAction({
    required this.port,
    this.service,
  });

  /// Creates a GRPCAction from JSON data.
  GRPCAction.fromJson(Map<String, dynamic> json)
      : this(
          port: json['port'],
          service: json['service'],
        );

  /// Creates a list of GRPCAction from JSON data.
  static List<GRPCAction> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => GRPCAction.fromJson(e)).toList();
  }

  /// Converts a GRPCAction instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['port'] = port;
    if (service != null) {
      jsonData['service'] = service!;
    }

    return jsonData;
  }

  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final int port;

  /// Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  ///
  /// If this is not specified, the default behavior is defined by gRPC.
  final String? service;
}
