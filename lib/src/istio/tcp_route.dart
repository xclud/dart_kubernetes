import 'l4_match_attribute.dart';
import 'route_destination.dart';

/// Describes match conditions and actions for routing TCP traffic.
/// The following routing rule forwards traffic arriving at port
/// 27017 for mongo.prod.svc.cluster.local to another Mongo server on port 5555.
class TCPRoute {
  /// The main constructor.
  const TCPRoute({this.match, this.route});

  /// Creates a TCPRoute from JSON data.
  TCPRoute.fromJson(Map<String, dynamic> json)
      : this(
          match: json['match'] != null
              ? (json['match'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .map((e) => L4MatchAttributes.fromJson(e))
                  .toList()
              : null,
          route: json['route'] != null
              ? (json['route'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .map((e) => RouteDestination.fromJson(e))
                  .toList()
              : null,
        );

  /// Match conditions to be satisfied for the rule to be activated.
  /// All conditions inside a single match block have AND semantics,
  /// while the list of match blocks have OR semantics.
  /// The rule is matched if any one of the match blocks succeed.
  final List<L4MatchAttributes>? match;

  /// The destination to which the connection should be forwarded to.
  final List<RouteDestination>? route;
}
