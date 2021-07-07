import 'package:kubernetes/src/istio/destination.dart';
import 'headers.dart';

/// Each routing rule is associated with one or more service versions (see glossary in beginning of document).
/// Weights associated with the version determine the proportion of traffic it receives.
/// For example, the following rule will route 25% of traffic for the “reviews” service to instances with
/// the “v2” tag and the remaining traffic (i.e., 75%) to “v1”.
class HTTPRouteDestination {
  /// The main constructor.
  const HTTPRouteDestination({
    required this.destination,
    this.weight,
    this.headers,
  });

  /// Destination uniquely identifies the instances of a service to which the request/connection
  /// should be forwarded to.
  final Destination destination;

  /// The proportion of traffic to be forwarded to the service version. (0-100).
  /// Sum of weights across destinations SHOULD BE == 100. If there is only one destination in a rule,
  /// the weight value is assumed to be 100.
  final int? weight;

  /// Header manipulation rules.
  final Headers? headers;
}
