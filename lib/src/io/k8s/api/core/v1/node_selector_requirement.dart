// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
class NodeSelectorRequirement {
  /// Default constructor.
  const NodeSelectorRequirement({
    required this.key,
    required this.operator,
    this.values,
  });

  /// Creates a [NodeSelectorRequirement] from JSON data.
  factory NodeSelectorRequirement.fromJson(Map<String, dynamic> json) {
    final tempKeyJson = json['key'];
    final tempOperatorJson = json['operator'];
    final tempValuesJson = json['values'];

    final String tempKey = tempKeyJson;
    final String tempOperator = tempOperatorJson;
    final List<String>? tempValues =
        tempValuesJson != null ? List<String>.from(tempValuesJson) : null;

    return NodeSelectorRequirement(
      key: tempKey,
      operator: tempOperator,
      values: tempValues,
    );
  }

  /// The label key that the selector applies to.
  final String key;

  /// Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
  final String operator;

  /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
  final List<String>? values;

  /// Converts a [NodeSelectorRequirement] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempKey = key;
    final tempOperator = operator;
    final tempValues = values;

    jsonData['key'] = tempKey;

    jsonData['operator'] = tempOperator;

    if (tempValues != null) {
      jsonData['values'] = tempValues;
    }

    return jsonData;
  }
}
