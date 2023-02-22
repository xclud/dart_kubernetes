import 'package:kubernetes/src/generated/kubernetes/api/core/v1/scoped_resource_selector_requirement.dart';

/// A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
class ScopeSelector {
  /// The main constructor.
  const ScopeSelector({
    this.matchExpressions,
  });

  /// Creates a ScopeSelector from JSON data.
  ScopeSelector.fromJson(Map<String, dynamic> json)
      : this(
          matchExpressions: json['matchExpressions'] != null
              ? ScopedResourceSelectorRequirement.listFromJson(
                  (json['matchExpressions'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of ScopeSelector from JSON data.
  static List<ScopeSelector> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ScopeSelector.fromJson(e)).toList();
  }

  /// Converts a ScopeSelector instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (matchExpressions != null) {
      jsonData['matchExpressions'] =
          matchExpressions!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// A list of scope selector requirements by scope of the resources.
  final List<ScopedResourceSelectorRequirement>? matchExpressions;
}
