// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
class ScopeSelector {
  /// Default constructor.
  const ScopeSelector({
    this.matchExpressions,
  });

  /// Creates a [ScopeSelector] from JSON data.
  factory ScopeSelector.fromJson(Map<String, dynamic> json) {
    final tempMatchExpressionsJson = json['matchExpressions'];

    final List<ScopedResourceSelectorRequirement>? tempMatchExpressions =
        tempMatchExpressionsJson != null
            ? List<dynamic>.from(tempMatchExpressionsJson)
                .map(
                  (e) => ScopedResourceSelectorRequirement.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return ScopeSelector(
      matchExpressions: tempMatchExpressions,
    );
  }

  /// A list of scope selector requirements by scope of the resources.
  final List<ScopedResourceSelectorRequirement>? matchExpressions;

  /// Converts a [ScopeSelector] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMatchExpressions = matchExpressions;

    if (tempMatchExpressions != null) {
      jsonData['matchExpressions'] =
          tempMatchExpressions.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
