import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/ingress_load_balancer_status.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatus {
  /// The main constructor.
  const IngressStatus({
    this.loadBalancer,
  });

  /// Creates a IngressStatus from JSON data.
  IngressStatus.fromJson(Map<String, dynamic> json)
      : this(
          loadBalancer: json['loadBalancer'] != null ? IngressLoadBalancerStatus.fromJson(json['loadBalancer']): null,
        );

  /// Creates a list of IngressStatus from JSON data.
  static List<IngressStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IngressStatus.fromJson(e)).toList();
  }

  /// Converts a IngressStatus instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(loadBalancer != null) { jsonData['loadBalancer'] = loadBalancer!.toJson(); }
    

    return jsonData;
  }


  /// LoadBalancer contains the current status of the load-balancer.
  final IngressLoadBalancerStatus? loadBalancer;
}
