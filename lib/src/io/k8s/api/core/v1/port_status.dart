// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Port Status.
class PortStatus {
  /// Default constructor.
  const PortStatus({
    this.error,
    required this.port,
    required this.protocol,
  });

  /// Creates a [PortStatus] from JSON data.
  factory PortStatus.fromJson(Map<String, dynamic> json) {
    final tempErrorJson = json['error'];
    final tempPortJson = json['port'];
    final tempProtocolJson = json['protocol'];

    final String? tempError = tempErrorJson;
    final int tempPort = tempPortJson;
    final String tempProtocol = tempProtocolJson;

    return PortStatus(
      error: tempError,
      port: tempPort,
      protocol: tempProtocol,
    );
  }

  /// Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  ///   CamelCase names
  /// - cloud provider specific error values must have names that comply with the
  ///   format foo.example.com/CamelCase.
  final String? error;

  /// Port is the port number of the service port of which status is recorded here.
  final int port;

  /// Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP".
  final String protocol;

  /// Converts a [PortStatus] instance to JSON data.
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
