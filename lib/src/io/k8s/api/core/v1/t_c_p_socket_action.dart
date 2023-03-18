// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// TCPSocketAction describes an action based on opening a socket.
class TCPSocketAction {
  /// Default constructor.
  const TCPSocketAction({
    this.host,
    required this.port,
  });

  /// Creates a [TCPSocketAction] from JSON data.
  factory TCPSocketAction.fromJson(Map<String, dynamic> json) {
    final tempHostJson = json['host'];
    final tempPortJson = json['port'];

    final String? tempHost = tempHostJson;
    final IntOrString tempPort = IntOrString(tempPortJson);

    return TCPSocketAction(
      host: tempHost,
      port: tempPort,
    );
  }

  /// Optional: Host name to connect to, defaults to the pod IP.
  final String? host;

  /// Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  final IntOrString port;

  /// Converts a [TCPSocketAction] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHost = host;
    final tempPort = port;

    if (tempHost != null) {
      jsonData['host'] = tempHost;
    }

    jsonData['port'] = tempPort;

    return jsonData;
  }
}
