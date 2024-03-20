// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ServicePort contains information on service's port.
class ServicePort {
  /// Default constructor.
  const ServicePort({
    this.appProtocol,
    this.name,
    this.nodePort,
    required this.port,
    this.protocol,
    this.targetPort,
  });

  /// Creates a [ServicePort] from JSON data.
  factory ServicePort.fromJson(Map<String, dynamic> json) {
    final tempAppProtocolJson = json['appProtocol'];
    final tempNameJson = json['name'];
    final tempNodePortJson = json['nodePort'];
    final tempPortJson = json['port'];
    final tempProtocolJson = json['protocol'];
    final tempTargetPortJson = json['targetPort'];

    final String? tempAppProtocol = tempAppProtocolJson;
    final String? tempName = tempNameJson;
    final int? tempNodePort = tempNodePortJson;
    final int tempPort = tempPortJson;
    final String? tempProtocol = tempProtocolJson;
    final IntOrString? tempTargetPort =
        tempTargetPortJson != null ? IntOrString(tempTargetPortJson) : null;

    return ServicePort(
      appProtocol: tempAppProtocol,
      name: tempName,
      nodePort: tempNodePort,
      port: tempPort,
      protocol: tempProtocol,
      targetPort: tempTargetPort,
    );
  }

  /// The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
  final String? appProtocol;

  /// The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. When considering the endpoints for a Service, this must match the 'name' field in the EndpointPort. Optional if only one ServicePort is defined on this service.
  final String? name;

  /// The port on each node on which this service is exposed when type is NodePort or LoadBalancer.  Usually assigned by the system. If a value is specified, in-range, and not in use it will be used, otherwise the operation will fail.  If not specified, a port will be allocated if this Service requires one.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type from NodePort to ClusterIP). More info: https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport.
  final int? nodePort;

  /// The port that will be exposed by this service.
  final int port;

  /// The IP protocol for this port. Supports "TCP", "UDP", and "SCTP". Default is TCP.
  final String? protocol;

  /// Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map). This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field. More info: https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service.
  final IntOrString? targetPort;

  /// Converts a [ServicePort] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAppProtocol = appProtocol;
    final tempName = name;
    final tempNodePort = nodePort;
    final tempPort = port;
    final tempProtocol = protocol;
    final tempTargetPort = targetPort;

    if (tempAppProtocol != null) {
      jsonData['appProtocol'] = tempAppProtocol;
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempNodePort != null) {
      jsonData['nodePort'] = tempNodePort;
    }

    jsonData['port'] = tempPort;

    if (tempProtocol != null) {
      jsonData['protocol'] = tempProtocol;
    }

    if (tempTargetPort != null) {
      jsonData['targetPort'] = tempTargetPort;
    }

    return jsonData;
  }
}
