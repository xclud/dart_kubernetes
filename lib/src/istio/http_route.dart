import 'cors_policy.dart';
import 'delegate.dart';
import 'destination.dart';
import 'headers.dart';
import 'http_fault_injection.dart';
import 'http_match_request.dart';
import 'http_redirect.dart';
import 'http_retry.dart';
import 'http_rewrite.dart';
import 'http_route_destination.dart';
import 'percent.dart';
import 'utils.dart';

/// Describes match conditions and actions for routing HTTP/1.1, HTTP2, and gRPC traffic. See [VirtualService] for usage examples.
class HTTPRoute {
  /// The main constructor.
  const HTTPRoute({
    this.name,
    this.match,
    this.route,
    this.redirect,
    this.delegate,
    this.rewrite,
    this.timeout,
    this.retries,
    this.fault,
    this.mirror,
    this.mirrorPercentage,
    this.corsPolicy,
    this.headers,
    this.mirrorPercent,
  });

  /// Creates a HTTPRoute from JSON data.
  HTTPRoute.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          match: json['match'] != null
              ? (json['match'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .map((e) => HTTPMatchRequest.fromJson(e))
                  .toList()
              : null,
          route: json['route'] != null
              ? (json['route'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .map((e) => HTTPRouteDestination.fromJson(e))
                  .toList()
              : null,
          redirect: json['redirect'] != null
              ? HTTPRedirect.fromJson(json['redirect'])
              : null,
          delegate: json['delegate'] != null
              ? Delegate.fromJson(json['delegate'])
              : null,
          rewrite: json['rewrite'] != null
              ? HTTPRewrite.fromJson(json['rewrite'])
              : null,
          timeout: parseDuration(json['timeout']),
          retries: json['retries'] != null
              ? HTTPRetry.fromJson(json['retries'])
              : null,
          fault: json['fault'] != null
              ? HTTPFaultInjection.fromJson(json['fault'])
              : null,
          mirror: json['mirror'] != null
              ? Destination.fromJson(json['mirror'])
              : null,
          mirrorPercentage: json['mirrorPercentage'] != null
              ? Percent.fromJson(json['mirrorPercentage'])
              : null,
          corsPolicy: json['corsPolicy'] != null
              ? CorsPolicy.fromJson(json['corsPolicy'])
              : null,
          headers: json['headers'] != null
              ? Headers.fromJson(json['headers'])
              : null,
          mirrorPercent: json['mirrorPercent'],
        );

  /// The name assigned to the route for debugging purposes.
  /// The route’s name will be concatenated with the match’s name and will be logged in the access logs
  /// for requests matching this route/match.
  final String? name;

  /// Match conditions to be satisfied for the rule to be activated.
  /// All conditions inside a single match block have AND semantics,
  /// while the list of match blocks have OR semantics.
  /// The rule is matched if any one of the match blocks succeed.
  final List<HTTPMatchRequest>? match;

  /// A HTTP rule can either redirect or forward (default) traffic.
  /// The forwarding target can be one of several versions of a
  /// service (see glossary in beginning of document).
  /// Weights associated with the service version determine the proportion of traffic it receives.
  final List<HTTPRouteDestination>? route;

  /// A HTTP rule can either redirect or forward (default) traffic.
  /// If traffic passthrough option is specified in the rule, route/redirect will be ignored.
  /// The redirect primitive can be used to send a HTTP 301 redirect to a different URI or Authority.
  final HTTPRedirect? redirect;

  ///
  /// Delegate is used to specify the particular VirtualService which can be used to define delegate [HTTPRoute].
  ///
  /// It can be set only when Route and Redirect are empty, and the route rules of the delegate [VirtualService] will be merged with that in the current one.
  ///
  /// NOTE:
  ///
  /// - Only one level delegation is supported.
  ///
  /// - The delegate’s [HTTPMatchRequest] must be a strict subset of the root’s, otherwise there is a conflict and the [HTTPRoute] will not take effect.
  final Delegate? delegate;

  /// Rewrite HTTP URIs and Authority headers. Rewrite cannot be used with Redirect primitive.
  /// Rewrite will be performed before forwarding.
  final HTTPRewrite? rewrite;

  /// Timeout for HTTP requests, default is disabled.
  final Duration? timeout;

  /// Retry policy for HTTP requests.
  final HTTPRetry? retries;

  /// Fault injection policy to apply on HTTP traffic at the client side.
  /// Note that timeouts or retries will not be enabled when faults are enabled
  /// on the client side.
  final HTTPFaultInjection? fault;

  /// Mirror HTTP traffic to a another destination in addition to forwarding the requests to the intended
  /// destination. Mirrored traffic is on a best effort basis where the sidecar/gateway will not wait
  /// for the mirrored cluster to respond before returning the response from the original destination.
  /// Statistics will be generated for the mirrored destination.
  final Destination? mirror;

  /// Percentage of the traffic to be mirrored by the mirror field. If this field is absent,
  /// all the traffic (100%) will be mirrored. Max value is 100.
  final Percent? mirrorPercentage;

  /// Cross-Origin Resource Sharing policy (CORS).
  /// Refer to CORS for further details about cross origin resource sharing.
  final CorsPolicy? corsPolicy;

  /// Header manipulation rules.
  final Headers? headers;

  /// Percentage of the traffic to be mirrored by the mirror field.
  /// Use of integer mirror_percent value is deprecated.
  /// Use the double mirror_percentage field instead.
  @Deprecated('Use the double mirrorPercentage field instead.')
  final int? mirrorPercent;
}
