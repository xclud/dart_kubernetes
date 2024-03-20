// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1.dart';

/// NetworkPolicyPort describes a port to allow traffic on.
class NetworkPolicyPort {
  /// Default constructor.
  const NetworkPolicyPort({
    this.endPort,
    this.port,
    this.protocol,
  });

  /// Creates a [NetworkPolicyPort] from JSON data.
  factory NetworkPolicyPort.fromJson(Map<String, dynamic> json) {
    final tempEndPortJson = json['endPort'];
    final tempPortJson = json['port'];
    final tempProtocolJson = json['protocol'];

    final int? tempEndPort = tempEndPortJson;
    final IntOrString? tempPort =
        tempPortJson != null ? IntOrString(tempPortJson) : null;
    final String? tempProtocol = tempProtocolJson;

    return NetworkPolicyPort(
      endPort: tempEndPort,
      port: tempPort,
      protocol: tempProtocol,
    );
  }

  /// endPort indicates that the range of ports from port to endPort if set, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port.
  final int? endPort;

  /// port represents the port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
  final IntOrString? port;

  /// protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  final String? protocol;

  /// Converts a [NetworkPolicyPort] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempEndPort = endPort;
    final tempPort = port;
    final tempProtocol = protocol;

    if (tempEndPort != null) {
      jsonData['endPort'] = tempEndPort;
    }

    if (tempPort != null) {
      jsonData['port'] = tempPort;
    }

    if (tempProtocol != null) {
      jsonData['protocol'] = tempProtocol;
    }

    return jsonData;
  }
}
