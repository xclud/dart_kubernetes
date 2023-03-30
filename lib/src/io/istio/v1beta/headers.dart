part of io.istio.v1beta1;

/// Message headers can be manipulated when Envoy forwards requests to, or responses from, a destination service.
/// Header manipulation rules can be specified for a specific route destination or for all destinations.
class Headers {
  /// The main constructor.
  const Headers({
    this.request,
    this.response,
  });

  /// Creates a Headers from JSON data.
  Headers.fromJson(Map<String, dynamic> json)
      : this(
          request: json['request'] != null
              ? HeaderOperations.fromJson(json['request'])
              : null,
          response: json['response'] != null
              ? HeaderOperations.fromJson(json['response'])
              : null,
        );

  /// Header manipulation rules to apply before forwarding a request to the destination service.
  final HeaderOperations? request;

  /// Header manipulation rules to apply before returning a response to the caller.
  final HeaderOperations? response;
}
