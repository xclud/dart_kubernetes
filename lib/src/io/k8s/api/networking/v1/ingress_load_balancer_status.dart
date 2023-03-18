// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// IngressLoadBalancerStatus represents the status of a load-balancer.
class IngressLoadBalancerStatus {
  /// Default constructor.
  const IngressLoadBalancerStatus({
    this.ingress,
  });

  /// Creates a [IngressLoadBalancerStatus] from JSON data.
  factory IngressLoadBalancerStatus.fromJson(Map<String, dynamic> json) {
    final tempIngressJson = json['ingress'];

    final List<IngressLoadBalancerIngress>? tempIngress =
        tempIngressJson != null
            ? List<dynamic>.from(tempIngressJson)
                .map(
                  (e) => IngressLoadBalancerIngress.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return IngressLoadBalancerStatus(
      ingress: tempIngress,
    );
  }

  /// ingress is a list containing ingress points for the load-balancer.
  final List<IngressLoadBalancerIngress>? ingress;

  /// Converts a [IngressLoadBalancerStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempIngress = ingress;

    if (tempIngress != null) {
      jsonData['ingress'] = tempIngress;
    }

    return jsonData;
  }
}
