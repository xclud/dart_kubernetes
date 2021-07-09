import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/condition.dart';
import 'package:kubernetes/src/generated/api/core/v1/load_balancer_status.dart';

/// ServiceStatus represents the current status of a service.
class ServiceStatus {
  /// The main constructor.
  const ServiceStatus({
    this.conditions,
    this.loadBalancer,
  });

  /// Creates a ServiceStatus from JSON data.
  ServiceStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null
              ? Condition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          loadBalancer: json['loadBalancer'] != null
              ? LoadBalancerStatus.fromJson(json['loadBalancer'])
              : null,
        );

  /// Creates a list of ServiceStatus from JSON data.
  static List<ServiceStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ServiceStatus.fromJson(e)).toList();
  }

  /// Current service state.
  final List<Condition>? conditions;

  /// LoadBalancer contains the current status of the load-balancer, if one is present.
  final LoadBalancerStatus? loadBalancer;
}
