// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// LimitRangeSpec defines a min/max usage limit for resources that match on kind.
class LimitRangeSpec {
  /// Default constructor.
  const LimitRangeSpec({
    required this.limits,
  });

  /// Creates a [LimitRangeSpec] from JSON data.
  factory LimitRangeSpec.fromJson(Map<String, dynamic> json) {
    final tempLimitsJson = json['limits'];

    final List<LimitRangeItem> tempLimits = List<dynamic>.from(tempLimitsJson)
        .map(
          (e) => LimitRangeItem.fromJson(
            Map<String, dynamic>.from(e),
          ),
        )
        .toList();

    return LimitRangeSpec(
      limits: tempLimits,
    );
  }

  /// Limits is the list of LimitRangeItem objects that are enforced.
  final List<LimitRangeItem> limits;

  /// Converts a [LimitRangeSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLimits = limits;

    jsonData['limits'] =
        tempLimits.map((e) => e.toJson()).toList(growable: false);

    return jsonData;
  }
}
