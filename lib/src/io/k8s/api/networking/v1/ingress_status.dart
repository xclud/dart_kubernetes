// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatus {
  /// Default constructor.
  const IngressStatus({
    this.loadBalancer,
  });

  /// Creates a [IngressStatus] from JSON data.
  factory IngressStatus.fromJson(Map<String, dynamic> json) {
    final tempLoadBalancerJson = json['loadBalancer'];

    final IngressLoadBalancerStatus? tempLoadBalancer =
        tempLoadBalancerJson != null
            ? IngressLoadBalancerStatus.fromJson(tempLoadBalancerJson)
            : null;

    return IngressStatus(
      loadBalancer: tempLoadBalancer,
    );
  }

  /// loadBalancer contains the current status of the load-balancer.
  final IngressLoadBalancerStatus? loadBalancer;

  /// Converts a [IngressStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLoadBalancer = loadBalancer;

    if (tempLoadBalancer != null) {
      jsonData['loadBalancer'] = tempLoadBalancer.toJson();
    }

    return jsonData;
  }
}
