import 'package:kubernetes/src/generated/api/core/v1/load_balancer_ingress.dart';

/// LoadBalancerStatus represents the status of a load-balancer.
class LoadBalancerStatus {
  /// The main constructor.
  const LoadBalancerStatus({
    this.ingress,
  });

  /// Creates a LoadBalancerStatus from JSON data.
  LoadBalancerStatus.fromJson(Map<String, dynamic> json)
      : this(
          ingress: json['ingress'] != null
              ? LoadBalancerIngress.listFromJson(
                  (json['ingress'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of LoadBalancerStatus from JSON data.
  static List<LoadBalancerStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LoadBalancerStatus.fromJson(e)).toList();
  }

  /// Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
  final List<LoadBalancerIngress>? ingress;
}
