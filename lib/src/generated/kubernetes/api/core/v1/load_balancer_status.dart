import 'package:kubernetes/src/generated/kubernetes/api/core/v1/load_balancer_ingress.dart';

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

  /// Converts a LoadBalancerStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (ingress != null) {
      jsonData['ingress'] = ingress!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
  final List<LoadBalancerIngress>? ingress;
}
