import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/ingress_load_balancer_ingress.dart';

/// IngressLoadBalancerStatus represents the status of a load-balancer.
class IngressLoadBalancerStatus {
  /// The main constructor.
  const IngressLoadBalancerStatus({
    this.ingress,
  });

  /// Creates a IngressLoadBalancerStatus from JSON data.
  IngressLoadBalancerStatus.fromJson(Map<String, dynamic> json)
      : this(
          ingress: json['ingress'] != null ? IngressLoadBalancerIngress.listFromJson((json['ingress'] as Iterable).cast<Map<String, dynamic>>()): null,
        );

  /// Creates a list of IngressLoadBalancerStatus from JSON data.
  static List<IngressLoadBalancerStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IngressLoadBalancerStatus.fromJson(e)).toList();
  }

  /// Converts a IngressLoadBalancerStatus instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(ingress != null) { jsonData['ingress'] = ingress!.map((item) => item.toJson()).toList(); }
    

    return jsonData;
  }


  /// Ingress is a list containing ingress points for the load-balancer.
  final List<IngressLoadBalancerIngress>? ingress;
}
