import 'utils.dart';

/// Describes the retry policy to use when a HTTP request fails.
class HTTPRetry {
  /// The main constructor.
  const HTTPRetry({
    required this.attempts,
    this.perTryTimeout,
    this.retryOn,
    this.retryRemoteLocalities,
  });

  /// Creates a HTTPRetry from JSON data.
  HTTPRetry.fromJson(Map<String, dynamic> json)
      : this(
          attempts: json['attempts'],
          perTryTimeout: json['perTryTimeout'] != null
              ? parseDuration(json['perTryTimeout'])
              : null,
          retryOn: json['retryOn'],
          retryRemoteLocalities: json['retryRemoteLocalities'],
        );

  /// Number of retries to be allowed for a given request.
  /// The interval between retries will be determined automatically (25ms+).
  /// When request timeout of the HTTP route or per_try_timeout is configured,
  /// the actual number of retries attempted also depends on the specified request
  /// timeout and per_try_timeout values.
  final int attempts;

  /// Timeout per attempt for a given request, including the initial call and any retries.
  /// Format: 1h/1m/1s/1ms. MUST BE >=1ms. Default is same value as request timeout of the HTTP route,
  /// which means no timeout.
  final Duration? perTryTimeout;

  /// Specifies the conditions under which retry takes place. One or more policies can be specified
  /// using a ‘,’ delimited list. See the retry policies and gRPC retry policies for more details.
  final String? retryOn;

  /// Flag to specify whether the retries should retry to other localities.
  /// See the retry plugin configuration for more details.
  final bool? retryRemoteLocalities;
}
