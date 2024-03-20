// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1.dart';

/// IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
class IngressLoadBalancerIngress {
  /// Default constructor.
  const IngressLoadBalancerIngress({
    this.hostname,
    this.ip,
    this.ports,
  });

  /// Creates a [IngressLoadBalancerIngress] from JSON data.
  factory IngressLoadBalancerIngress.fromJson(Map<String, dynamic> json) {
    final tempHostnameJson = json['hostname'];
    final tempIpJson = json['ip'];
    final tempPortsJson = json['ports'];

    final String? tempHostname = tempHostnameJson;
    final String? tempIp = tempIpJson;

    final List<IngressPortStatus>? tempPorts = tempPortsJson != null
        ? List<dynamic>.from(tempPortsJson)
            .map(
              (e) => IngressPortStatus.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return IngressLoadBalancerIngress(
      hostname: tempHostname,
      ip: tempIp,
      ports: tempPorts,
    );
  }

  /// hostname is set for load-balancer ingress points that are DNS based.
  final String? hostname;

  /// ip is set for load-balancer ingress points that are IP based.
  final String? ip;

  /// ports provides information about the ports exposed by this LoadBalancer.
  final List<IngressPortStatus>? ports;

  /// Converts a [IngressLoadBalancerIngress] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHostname = hostname;
    final tempIp = ip;
    final tempPorts = ports;

    if (tempHostname != null) {
      jsonData['hostname'] = tempHostname;
    }

    if (tempIp != null) {
      jsonData['ip'] = tempIp;
    }

    if (tempPorts != null) {
      jsonData['ports'] =
          tempPorts.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
