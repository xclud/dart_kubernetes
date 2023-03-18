// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ServiceStatus represents the current status of a service.
class ServiceStatus {
  /// Default constructor.
  const ServiceStatus({
    this.conditions,
    this.loadBalancer,
  });

  /// Creates a [ServiceStatus] from JSON data.
  factory ServiceStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];
    final tempLoadBalancerJson = json['loadBalancer'];

    final List<Condition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => Condition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final LoadBalancerStatus? tempLoadBalancer = tempLoadBalancerJson != null
        ? LoadBalancerStatus.fromJson(tempLoadBalancerJson)
        : null;

    return ServiceStatus(
      conditions: tempConditions,
      loadBalancer: tempLoadBalancer,
    );
  }

  /// Current service state.
  final List<Condition>? conditions;

  /// LoadBalancer contains the current status of the load-balancer, if one is present.
  final LoadBalancerStatus? loadBalancer;

  /// Converts a [ServiceStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditions = conditions;
    final tempLoadBalancer = loadBalancer;

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    if (tempLoadBalancer != null) {
      jsonData['loadBalancer'] = tempLoadBalancer.toJson();
    }

    return jsonData;
  }
}
