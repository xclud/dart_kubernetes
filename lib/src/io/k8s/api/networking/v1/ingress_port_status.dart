// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// IngressPortStatus represents the error condition of a service port.
class IngressPortStatus {
  /// Default constructor.
  const IngressPortStatus({
    this.error,
    required this.port,
    required this.protocol,
  });

  /// Creates a [IngressPortStatus] from JSON data.
  factory IngressPortStatus.fromJson(Map<String, dynamic> json) {
    final tempErrorJson = json['error'];
    final tempPortJson = json['port'];
    final tempProtocolJson = json['protocol'];

    final tempError = tempErrorJson;
    final tempPort = tempPortJson;
    final tempProtocol = tempProtocolJson;

    return IngressPortStatus(
      error: tempError,
      port: tempPort,
      protocol: tempProtocol,
    );
  }

  /// error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  ///   CamelCase names
  /// - cloud provider specific error values must have names that comply with the
  ///   format foo.example.com/CamelCase.
  final String? error;

  /// port is the port number of the ingress port.
  final int port;

  /// protocol is the protocol of the ingress port. The supported values are: "TCP", "UDP", "SCTP".
  final String protocol;

  /// Converts a [IngressPortStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempError = error;
    final tempPort = port;
    final tempProtocol = protocol;

    if (tempError != null) {
      jsonData['error'] = tempError;
    }

    jsonData['port'] = tempPort;

    jsonData['protocol'] = tempProtocol;

    return jsonData;
  }
}
