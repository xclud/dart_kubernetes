// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// A scoped-resource selector requirement is a selector that contains values, a scope name, and an operator that relates the scope name and values.
class ScopedResourceSelectorRequirement {
  /// Default constructor.
  const ScopedResourceSelectorRequirement({
    required this.operator,
    required this.scopeName,
    this.values,
  });

  /// Creates a [ScopedResourceSelectorRequirement] from JSON data.
  factory ScopedResourceSelectorRequirement.fromJson(
      Map<String, dynamic> json) {
    final tempOperatorJson = json['operator'];
    final tempScopeNameJson = json['scopeName'];
    final tempValuesJson = json['values'];

    final String tempOperator = tempOperatorJson;
    final String tempScopeName = tempScopeNameJson;
    final List<String>? tempValues =
        tempValuesJson != null ? List<String>.from(tempValuesJson) : null;

    return ScopedResourceSelectorRequirement(
      operator: tempOperator,
      scopeName: tempScopeName,
      values: tempValues,
    );
  }

  /// Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
  final String operator;

  /// The name of the scope that the selector applies to.
  final String scopeName;

  /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  final List<String>? values;

  /// Converts a [ScopedResourceSelectorRequirement] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempOperator = operator;
    final tempScopeName = scopeName;
    final tempValues = values;

    jsonData['operator'] = tempOperator;

    jsonData['scopeName'] = tempScopeName;

    if (tempValues != null) {
      jsonData['values'] = tempValues;
    }

    return jsonData;
  }
}
