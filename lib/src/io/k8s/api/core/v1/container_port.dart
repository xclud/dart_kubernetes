// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ContainerPort represents a network port in a single container.
class ContainerPort {
  /// Default constructor.
  const ContainerPort({
    required this.containerPort,
    this.hostIP,
    this.hostPort,
    this.name,
    this.protocol,
  });

  /// Creates a [ContainerPort] from JSON data.
  factory ContainerPort.fromJson(Map<String, dynamic> json) {
    final tempContainerPortJson = json['containerPort'];
    final tempHostIPJson = json['hostIP'];
    final tempHostPortJson = json['hostPort'];
    final tempNameJson = json['name'];
    final tempProtocolJson = json['protocol'];

    final tempContainerPort = tempContainerPortJson;
    final tempHostIP = tempHostIPJson;
    final tempHostPort = tempHostPortJson;
    final tempName = tempNameJson;
    final tempProtocol = tempProtocolJson;

    return ContainerPort(
      containerPort: tempContainerPort,
      hostIP: tempHostIP,
      hostPort: tempHostPort,
      name: tempName,
      protocol: tempProtocol,
    );
  }

  /// Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
  final int containerPort;

  /// What host IP to bind the external port to.
  final String? hostIP;

  /// Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
  final int? hostPort;

  /// If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
  final String? name;

  /// Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
  final String? protocol;

  /// Converts a [ContainerPort] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempContainerPort = containerPort;
    final tempHostIP = hostIP;
    final tempHostPort = hostPort;
    final tempName = name;
    final tempProtocol = protocol;

    jsonData['containerPort'] = tempContainerPort;

    if (tempHostIP != null) {
      jsonData['hostIP'] = tempHostIP;
    }

    if (tempHostPort != null) {
      jsonData['hostPort'] = tempHostPort;
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempProtocol != null) {
      jsonData['protocol'] = tempProtocol;
    }

    return jsonData;
  }
}
