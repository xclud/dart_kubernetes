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
          $default: json['default'] != null
              ? Map<String, String>.from(json['default'])
              : null,
          defaultRequest: json['defaultRequest'] != null
              ? Map<String, String>.from(json['defaultRequest'])
              : null,
          max: json['max'] != null
              ? Map<String, String>.from(json['max'])
              : null,
          maxLimitRequestRatio: json['maxLimitRequestRatio'] != null
              ? Map<String, String>.from(json['maxLimitRequestRatio'])
              : null,
          min: json['min'] != null
              ? Map<String, String>.from(json['min'])
              : null,
          type: json['type'],
        );

  /// Creates a list of LimitRangeItem from JSON data.
  static List<LimitRangeItem> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LimitRangeItem.fromJson(e)).toList();
  }

  /// Default resource requirement limit value by resource name if resource limit is omitted.
  final Map<String, String>? $default;

  /// DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
  final Map<String, String>? defaultRequest;

  /// Max usage constraints on this kind by resource name.
  final Map<String, String>? max;

  /// MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
  final Map<String, String>? maxLimitRequestRatio;

  /// Min usage constraints on this kind by resource name.
  final Map<String, String>? min;

  /// Type of resource that this limit applies to.
  final String type;
}
