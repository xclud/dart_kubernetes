// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// EndpointAddress is a tuple that describes single IP address.
class EndpointAddress {
  /// Default constructor.
  const EndpointAddress({
    this.hostname,
    required this.ip,
    this.nodeName,
    this.targetRef,
  });

  /// Creates a [EndpointAddress] from JSON data.
  factory EndpointAddress.fromJson(Map<String, dynamic> json) {
    final tempHostnameJson = json['hostname'];
    final tempIpJson = json['ip'];
    final tempNodeNameJson = json['nodeName'];
    final tempTargetRefJson = json['targetRef'];

    final String? tempHostname = tempHostnameJson;
    final String tempIp = tempIpJson;
    final String? tempNodeName = tempNodeNameJson;
    final ObjectReference? tempTargetRef = tempTargetRefJson != null
        ? ObjectReference.fromJson(tempTargetRefJson)
        : null;

    return EndpointAddress(
      hostname: tempHostname,
      ip: tempIp,
      nodeName: tempNodeName,
      targetRef: tempTargetRef,
    );
  }

  /// The Hostname of this endpoint.
  final String? hostname;

  /// The IP of this endpoint. May not be loopback (127.0.0.0/8 or ::1), link-local (169.254.0.0/16 or fe80::/10), or link-local multicast (224.0.0.0/24 or ff02::/16).
  final String ip;

  /// Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
  final String? nodeName;

  /// Reference to object providing the endpoint.
  final ObjectReference? targetRef;

  /// Converts a [EndpointAddress] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHostname = hostname;
    final tempIp = ip;
    final tempNodeName = nodeName;
    final tempTargetRef = targetRef;

    if (tempHostname != null) {
      jsonData['hostname'] = tempHostname;
    }

    jsonData['ip'] = tempIp;

    if (tempNodeName != null) {
      jsonData['nodeName'] = tempNodeName;
    }

    if (tempTargetRef != null) {
      jsonData['targetRef'] = tempTargetRef.toJson();
    }

    return jsonData;
  }
}
