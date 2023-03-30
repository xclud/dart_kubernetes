part of io.istio.v1beta1;

/// Delay specification is used to inject latency into the request forwarding path.
/// The following example will introduce a 5 second delay in 1 out of every 1000 requests
/// to the “v1” version of the “reviews” service from all pods with label env: prod.
///
/// The fixedDelay field is used to indicate the amount of delay in seconds.
/// The optional percentage field can be used to only delay a certain percentage of requests.
/// If left unspecified, all request will be delayed.
class Delay {
  /// The main constructor.
  const Delay({
    this.fixedDelay,
    this.percentage,
    this.percent,
  });

  /// Creates a Delay from JSON data.
  Delay.fromJson(Map<String, dynamic> json)
      : this(
          fixedDelay: json['fixedDelay'] != null
              ? parseDuration(json['fixedDelay'])
              : null,
          percentage: json['percentage'] != null
              ? Percent.fromJson(json['percentage'])
              : null,
          percent: json['percent'],
        );

  /// Add a fixed delay before forwarding the request. Format: 1h/1m/1s/1ms. MUST be >=1ms.
  final Duration? fixedDelay;

  /// Percentage of requests on which the delay will be injected.
  final Percent? percentage;

  /// Percentage of requests on which the delay will be injected (0-100).
  /// Use of integer percent value is deprecated.
  @Deprecated('Use the double percentage field instead.')
  final int? percent;
}
