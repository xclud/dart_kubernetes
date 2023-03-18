// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
class LoadBalancerIngress {
  /// Default constructor.
  const LoadBalancerIngress({
    this.hostname,
    this.ip,
    this.ports,
  });

  /// Creates a [LoadBalancerIngress] from JSON data.
  factory LoadBalancerIngress.fromJson(Map<String, dynamic> json) {
    final tempHostnameJson = json['hostname'];
    final tempIpJson = json['ip'];
    final tempPortsJson = json['ports'];

    final String? tempHostname = tempHostnameJson;
    final String? tempIp = tempIpJson;

    final List<PortStatus>? tempPorts = tempPortsJson != null
        ? List<dynamic>.from(tempPortsJson)
            .map(
              (e) => PortStatus.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return LoadBalancerIngress(
      hostname: tempHostname,
      ip: tempIp,
      ports: tempPorts,
    );
  }

  /// Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers).
  final String? hostname;

  /// IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers).
  final String? ip;

  /// Ports is a list of records of service ports If used, every port defined in the service should have an entry in it.
  final List<PortStatus>? ports;

  /// Converts a [LoadBalancerIngress] instance to JSON data.
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
      jsonData['ports'] = tempPorts;
    }

    return jsonData;
  }
}
