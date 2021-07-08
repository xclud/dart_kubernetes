import 'string_match.dart';
import 'utils.dart';

/// Describes the Cross-Origin Resource Sharing (CORS) policy,
/// for a given service. Refer to CORS for further details about cross origin resource sharing.
/// For example, the following rule restricts cross origin requests to those originating
/// from example.com domain using HTTP POST/GET, and sets the Access-Control-Allow-Credentials
/// header to false. In addition, it only exposes X-Foo-bar header and sets an expiry period of 1 day.
class CorsPolicy {
  /// The main constructor.
  const CorsPolicy({
    this.allowOrigins,
    this.allowMethods,
    this.allowHeaders,
    this.exposeHeaders,
    this.maxAge,
    this.allowCredentials,
  });

  /// Creates a CorsPolicy from JSON data.
  CorsPolicy.fromJson(Map<String, dynamic> json)
      : this(
          allowOrigins: json['allowOrigins'] != null
              ? (json['allowOrigins'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .map((e) => StringMatch.fromJson(e))
                  .toList()
              : null,
          allowMethods: json['allowMethods'] != null
              ? List<String>.from(json['allowMethods'])
              : null,
          allowHeaders: json['allowHeaders'] != null
              ? List<String>.from(json['allowHeaders'])
              : null,
          exposeHeaders: json['exposeHeaders'] != null
              ? List<String>.from(json['exposeHeaders'])
              : null,
          maxAge: parseDuration(json['maxAge']),
          allowCredentials: json['allowCredentials'],
        );

  /// String patterns that match allowed origins. An origin is allowed if any of the string matchers match.
  /// If a match is found, then the outgoing Access-Control-Allow-Origin would be set to the origin as provided by the client.
  final List<StringMatch>? allowOrigins;

  /// List of HTTP methods allowed to access the resource.
  /// The content will be serialized into the Access-Control-Allow-Methods header.
  final List<String>? allowMethods;

  /// List of HTTP headers that can be used when requesting the resource.
  /// Serialized to Access-Control-Allow-Headers header.
  final List<String>? allowHeaders;

  /// A list of HTTP headers that the browsers are allowed to access.
  /// Serialized into Access-Control-Expose-Headers header.
  final List<String>? exposeHeaders;

  /// Specifies how long the results of a preflight request can be cached.
  /// Translates to the Access-Control-Max-Age header.
  final Duration? maxAge;

  /// Indicates whether the caller is allowed to send the actual request (not the preflight) using credentials.
  /// Translates to Access-Control-Allow-Credentials header.
  final bool? allowCredentials;
}
