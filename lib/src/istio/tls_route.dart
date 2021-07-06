import 'package:kubernetes/src/istio/route_destination.dart';
import 'package:kubernetes/src/istio/tls_match_attributes.dart';

class TLSRoute {
  const TLSRoute({
    required this.match,
    this.route,
  });

  /// Match conditions to be satisfied for the rule to be activated.
  /// All conditions inside a single match block have AND semantics,
  /// while the list of match blocks have OR semantics.
  /// The rule is matched if any one of the match blocks succeed.
  final TLSMatchAttributes match;

  /// The destination to which the connection should be forwarded to.
  final RouteDestination? route;
}
