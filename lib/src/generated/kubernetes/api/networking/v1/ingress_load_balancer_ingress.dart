import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/ingress_port_status.dart';

/// IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
class IngressLoadBalancerIngress {
  /// The main constructor.
  const IngressLoadBalancerIngress({
    this.hostname,
    this.ip,
    this.ports,
  });

  /// Creates a IngressLoadBalancerIngress from JSON data.
  IngressLoadBalancerIngress.fromJson(Map<String, dynamic> json)
      : this(
          hostname: json['hostname'],
          ip: json['ip'],
          ports: json['ports'] != null
              ? IngressPortStatus.listFromJson(
                  (json['ports'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of IngressLoadBalancerIngress from JSON data.
  static List<IngressLoadBalancerIngress> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IngressLoadBalancerIngress.fromJson(e)).toList();
  }

  /// Converts a IngressLoadBalancerIngress instance to JSON data.
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

  /// Hostname is set for load-balancer ingress points that are DNS based.
  final String? hostname;

  /// Ip is set for load-balancer ingress points that are IP based.
  final String? ip;

  /// Ports provides information about the ports exposed by this LoadBalancer.
  final List<IngressPortStatus>? ports;
}
