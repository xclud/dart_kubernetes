part of io.istio.v1beta1;

/// L4 routing rule weighted destination.
class RouteDestination {
  /// The main constructor.
  const RouteDestination({
    required this.destination,
    this.weight,
  });

  /// From JSON.
  RouteDestination.fromJson(Map<String, dynamic> json)
      : this(
          destination: Destination.fromJson(json['destination']),
          weight: json['weight'],
        );

  /// Destination uniquely identifies the instances of a service to which the request/connection should be forwarded to.
  final Destination destination;

  /// The proportion of traffic to be forwarded to the service version.
  /// If there is only one destination in a rule, all traffic will be routed to it irrespective of the weight.
  final int? weight;
}
