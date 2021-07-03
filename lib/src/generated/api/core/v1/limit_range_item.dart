/// LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
class LimitRangeItem {
  /// The main constructor.
  const LimitRangeItem({
    this.$default,
    this.defaultRequest,
    this.max,
    this.maxLimitRequestRatio,
    this.min,
    required this.type,
  });

  /// Creates a LimitRangeItem from JSON data.
  LimitRangeItem.fromJson(Map<String, dynamic> json)
      : this(
          $default: json['default'],
          defaultRequest: json['defaultRequest'],
          max: json['max'],
          maxLimitRequestRatio: json['maxLimitRequestRatio'],
          min: json['min'],
          type: json['type'],
        );

  /// Creates a list of LimitRangeItem from JSON data.
  static List<LimitRangeItem> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LimitRangeItem.fromJson(e)).toList();
  }

  /// Default resource requirement limit value by resource name if resource limit is omitted.
  final Object? $default;

  /// DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
  final Object? defaultRequest;

  /// Max usage constraints on this kind by resource name.
  final Object? max;

  /// MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
  final Object? maxLimitRequestRatio;

  /// Min usage constraints on this kind by resource name.
  final Object? min;

  /// Type of resource that this limit applies to.
  final String type;
}
