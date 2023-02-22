import 'package:kubernetes/src/generated/kubernetes/api/core/v1/port_status.dart';

/// LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
class LoadBalancerIngress {
  /// The main constructor.
  const LoadBalancerIngress({
    this.hostname,
    this.ip,
    this.ports,
  });

  /// Creates a LoadBalancerIngress from JSON data.
  LoadBalancerIngress.fromJson(Map<String, dynamic> json)
      : this(
          hostname: json['hostname'],
          ip: json['ip'],
          ports: json['ports'] != null
              ? PortStatus.listFromJson(
                  (json['ports'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of LoadBalancerIngress from JSON data.
  static List<LoadBalancerIngress> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LoadBalancerIngress.fromJson(e)).toList();
  }

  /// Converts a LoadBalancerIngress instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (hostname != null) {
      jsonData['hostname'] = hostname!;
    }
    if (ip != null) {
      jsonData['ip'] = ip!;
    }
    if (ports != null) {
      jsonData['ports'] = ports!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers).
  final String? hostname;

  /// IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers).
  final String? ip;

  /// Ports is a list of records of service ports If used, every port defined in the service should have an entry in it.
  final List<PortStatus>? ports;
}
