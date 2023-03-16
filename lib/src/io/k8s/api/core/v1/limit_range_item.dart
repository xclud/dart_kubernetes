// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
class LimitRangeItem {
  /// Default constructor.
  const LimitRangeItem({
    this.$default = const {},
    this.defaultRequest = const {},
    this.max = const {},
    this.maxLimitRequestRatio = const {},
    this.min = const {},
    required this.type,
  });

  /// Creates a [LimitRangeItem] from JSON data.
  factory LimitRangeItem.fromJson(Map<String, dynamic> json) {
    final tempDefaultJson = json['default'];
    final tempDefaultRequestJson = json['defaultRequest'];
    final tempMaxJson = json['max'];
    final tempMaxLimitRequestRatioJson = json['maxLimitRequestRatio'];
    final tempMinJson = json['min'];
    final tempTypeJson = json['type'];

    final Map<String, Object> tempDefault = tempDefaultJson;
    final Map<String, Object> tempDefaultRequest = tempDefaultRequestJson;
    final Map<String, Object> tempMax = tempMaxJson;
    final Map<String, Object> tempMaxLimitRequestRatio =
        tempMaxLimitRequestRatioJson;
    final Map<String, Object> tempMin = tempMinJson;
    final String tempType = tempTypeJson;

    return LimitRangeItem(
      $default: tempDefault,
      defaultRequest: tempDefaultRequest,
      max: tempMax,
      maxLimitRequestRatio: tempMaxLimitRequestRatio,
      min: tempMin,
      type: tempType,
    );
  }

  /// Default resource requirement limit value by resource name if resource limit is omitted.
  final Map<String, Object> $default;

  /// DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
  final Map<String, Object> defaultRequest;

  /// Max usage constraints on this kind by resource name.
  final Map<String, Object> max;

  /// MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
  final Map<String, Object> maxLimitRequestRatio;

  /// Min usage constraints on this kind by resource name.
  final Map<String, Object> min;

  /// Type of resource that this limit applies to.
  final String type;

  /// Converts a [LimitRangeItem] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final temp$default = $default;
    final tempDefaultRequest = defaultRequest;
    final tempMax = max;
    final tempMaxLimitRequestRatio = maxLimitRequestRatio;
    final tempMin = min;
    final tempType = type;

    jsonData['default'] = temp$default;

    jsonData['defaultRequest'] = tempDefaultRequest;

    jsonData['max'] = tempMax;

    jsonData['maxLimitRequestRatio'] = tempMaxLimitRequestRatio;

    jsonData['min'] = tempMin;

    jsonData['type'] = tempType;

    return jsonData;
  }
}
