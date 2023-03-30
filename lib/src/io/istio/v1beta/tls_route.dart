part of io.istio.v1beta1;

/// Describes match conditions and actions for routing unterminated TLS traffic (TLS/HTTPS).
class TLSRoute {
  /// The main constructor.
  const TLSRoute({
    required this.match,
    this.route,
  });

  /// Creates a TLSRoute from JSON data.
  TLSRoute.fromJson(Map<String, dynamic> json)
      : this(
          match: TLSMatchAttributes.fromJson(json['match']),
          route: json['route'] != null
              ? RouteDestination.fromJson(json['route'])
              : null,
        );

  /// Match conditions to be satisfied for the rule to be activated.
  /// All conditions inside a single match block have AND semantics,
  /// while the list of match blocks have OR semantics.
  /// The rule is matched if any one of the match blocks succeed.
  final TLSMatchAttributes match;

  /// The destination to which the connection should be forwarded to.
  final RouteDestination? route;
}
