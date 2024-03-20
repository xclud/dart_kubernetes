// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// EndpointPort is a tuple that describes a single port.
class EndpointPort {
  /// Default constructor.
  const EndpointPort({
    this.appProtocol,
    this.name,
    required this.port,
    this.protocol,
  });

  /// Creates a [EndpointPort] from JSON data.
  factory EndpointPort.fromJson(Map<String, dynamic> json) {
    final tempAppProtocolJson = json['appProtocol'];
    final tempNameJson = json['name'];
    final tempPortJson = json['port'];
    final tempProtocolJson = json['protocol'];

    final String? tempAppProtocol = tempAppProtocolJson;
    final String? tempName = tempNameJson;
    final int tempPort = tempPortJson;
    final String? tempProtocol = tempProtocolJson;

    return EndpointPort(
      appProtocol: tempAppProtocol,
      name: tempName,
      port: tempPort,
      protocol: tempProtocol,
    );
  }

  /// The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:
  ///
  /// * Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names).
  ///
  /// * Kubernetes-defined prefixed names:
  ///   * 'kubernetes.io/h2c' - HTTP/2 over cleartext as described in https://www.rfc-editor.org/rfc/rfc7540
  ///   * 'kubernetes.io/grpc' - gRPC over HTTP/2 as described in https://github.com/grpc/grpc/blob/v1.51.1/doc/PROTOCOL-HTTP2.md
  ///
  /// * Other protocols should use implementation-defined prefixed names such as mycompany.com/my-custom-protocol.
  final String? appProtocol;

  /// The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
  final String? name;

  /// The port number of the endpoint.
  final int port;

  /// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  final String? protocol;

  /// Converts a [EndpointPort] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAppProtocol = appProtocol;
    final tempName = name;
    final tempPort = port;
    final tempProtocol = protocol;

    if (tempAppProtocol != null) {
      jsonData['appProtocol'] = tempAppProtocol;
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    jsonData['port'] = tempPort;

    if (tempProtocol != null) {
      jsonData['protocol'] = tempProtocol;
    }

    return jsonData;
  }
}
