import 'string_match.dart';

/// HttpMatchRequest specifies a set of criterion to be met in order for the rule to be applied to the HTTP request.
/// For example, the following restricts the rule to match only requests where the URL path starts with /ratings/v2/
/// and the request contains a custom end-user header with value jason.
class HTTPMatchRequest {
  /// The main constructor.
  HTTPMatchRequest({
    this.name,
    this.uri,
    this.scheme,
    this.method,
    this.authority,
    this.headers,
    this.port,
    this.sourceLabels,
    this.gateways,
    this.queryParams,
    this.ignoreUriCase,
    this.withoutHeaders,
    this.sourceNamespace,
  });

  /// The name assigned to a match.
  /// The match’s name will be concatenated with the parent route’s name and
  /// will be logged in the access logs for requests matching this route.
  final String? name;

  /// URI to match values are case-sensitive and formatted as follows:
  ///
  /// - exact: "value" for exact string match
  /// - prefix: "value" for prefix-based match
  /// - regex: "value" for ECMAscript style regex-based match
  ///
  /// Note: Case-insensitive matching could be enabled via the ignore_uri_case flag.
  final StringMatch? uri;

  /// URI Scheme values are case-sensitive and formatted as follows:
  ///
  /// - exact: "value" for exact string match
  /// - prefix: "value" for prefix-based match
  /// - regex: "value" for ECMAscript style regex-based match
  final StringMatch? scheme;

  /// HTTP Method values are case-sensitive and formatted as follows:
  ///
  /// - exact: "value" for exact string match
  /// - prefix: "value" for prefix-based match
  /// - regex: "value" for ECMAscript style regex-based match
  final StringMatch? method;

  /// HTTP Authority values are case-sensitive and formatted as follows:
  ///
  /// - exact: "value" for exact string match
  /// - prefix: "value" for prefix-based match
  /// - regex: "value" for ECMAscript style regex-based match
  final StringMatch? authority;

  /// The header keys must be lowercase and use hyphen as the separator, e.g. x-request-id.
  ///
  /// Header values are case-sensitive and formatted as follows:
  ///
  /// - exact: "value" for exact string match
  /// - prefix: "value" for prefix-based match
  /// - regex: "value" for ECMAscript style regex-based match
  ///
  /// If the value is empty and only the name of header is specfied, presence of the header is checked.
  /// Note: The keys uri, scheme, method, and authority will be ignored.
  final Map<String, StringMatch>? headers;

  /// Specifies the ports on the host that is being addressed.
  /// Many services only expose a single port or label ports with the protocols they support,
  /// in these cases it is not required to explicitly select the port.
  final int? port;

  /// One or more labels that constrain the applicability of a rule to workloads with the given labels.
  /// If the VirtualService has a list of gateways specified in the top-level gateways field,
  /// it must include the reserved gateway mesh for this field to be applicable.
  final Map<String, String>? sourceLabels;

  /// Names of gateways where the rule should be applied.
  /// Gateway names in the top-level gateways field of the VirtualService (if any) are overridden.
  /// The gateway match is independent of sourceLabels.
  final List<String>? gateways;

  /// Query parameters for matching.
  ///
  /// Ex:
  ///
  /// For a query parameter like “?key=true”, the map key would be “key” and the string match could be defined as exact: "true".
  ///
  /// For a query parameter like “?key”, the map key would be “key” and the string match could be defined as exact: "".
  ///
  /// For a query parameter like “?key=123”, the map key would be “key” and the string match could be defined as regex: "\d+$".
  /// Note that this configuration will only match values like “123” but not “a123” or “123a”.
  ///
  /// Note: prefix matching is currently not supported.
  final Map<String, StringMatch>? queryParams;

  /// Flag to specify whether the URI matching should be case-insensitive.
  ///
  /// Note: The case will be ignored only in the case of exact and prefix URI matches.
  final bool? ignoreUriCase;

  /// withoutHeader has the same syntax with the header, but has opposite meaning.
  /// If a header is matched with a matching rule among withoutHeader,
  /// the traffic becomes not matched one.
  final Map<String, StringMatch>? withoutHeaders;

  /// Source namespace constraining the applicability of a rule to workloads in that namespace.
  /// If the VirtualService has a list of gateways specified in the top-level gateways field,
  /// it must include the reserved gateway mesh for this field to be applicable.
  final String? sourceNamespace;
}
