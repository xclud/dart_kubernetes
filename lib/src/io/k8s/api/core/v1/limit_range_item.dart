// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
class LimitRangeItem {
  /// Default constructor.
  const LimitRangeItem({
    this.$default,
    this.defaultRequest,
    this.max,
    this.maxLimitRequestRatio,
    this.min,
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

    final Map<String, String>? tempDefault = tempDefaultJson != null
        ? Map<String, String>.from(tempDefaultJson)
        : null;

    final Map<String, String>? tempDefaultRequest =
        tempDefaultRequestJson != null
            ? Map<String, String>.from(tempDefaultRequestJson)
            : null;

    final Map<String, String>? tempMax =
        tempMaxJson != null ? Map<String, String>.from(tempMaxJson) : null;

    final Map<String, String>? tempMaxLimitRequestRatio =
        tempMaxLimitRequestRatioJson != null
            ? Map<String, String>.from(tempMaxLimitRequestRatioJson)
            : null;

    final Map<String, String>? tempMin =
        tempMinJson != null ? Map<String, String>.from(tempMinJson) : null;

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

  /// Converts a [LimitRangeItem] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final temp$default = $default;
    final tempDefaultRequest = defaultRequest;
    final tempMax = max;
    final tempMaxLimitRequestRatio = maxLimitRequestRatio;
    final tempMin = min;
    final tempType = type;

    if (temp$default != null) {
      jsonData['default'] = temp$default;
    }

    if (tempDefaultRequest != null) {
      jsonData['defaultRequest'] = tempDefaultRequest;
    }

    if (tempMax != null) {
      jsonData['max'] = tempMax;
    }

    if (tempMaxLimitRequestRatio != null) {
      jsonData['maxLimitRequestRatio'] = tempMaxLimitRequestRatio;
    }

    if (tempMin != null) {
      jsonData['min'] = tempMin;
    }

    jsonData['type'] = tempType;

    return jsonData;
  }
}
