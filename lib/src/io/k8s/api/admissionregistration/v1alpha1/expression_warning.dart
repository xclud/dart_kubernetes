// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../admissionregistration_v1alpha1.dart';

/// ExpressionWarning is a warning information that targets a specific expression.
class ExpressionWarning {
  /// Default constructor.
  const ExpressionWarning({
    required this.fieldRef,
    required this.warning,
  });

  /// Creates a [ExpressionWarning] from JSON data.
  factory ExpressionWarning.fromJson(Map<String, dynamic> json) {
    final tempFieldRefJson = json['fieldRef'];
    final tempWarningJson = json['warning'];

    final String tempFieldRef = tempFieldRefJson;
    final String tempWarning = tempWarningJson;

    return ExpressionWarning(
      fieldRef: tempFieldRef,
      warning: tempWarning,
    );
  }

  /// The path to the field that refers the expression. For example, the reference to the expression of the first item of validations is "spec.validations\[0\].expression".
  final String fieldRef;

  /// The content of type checking information in a human-readable form. Each line of the warning contains the type that the expression is checked against, followed by the type check error from the compiler.
  final String warning;

  /// Converts a [ExpressionWarning] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFieldRef = fieldRef;
    final tempWarning = warning;

    jsonData['fieldRef'] = tempFieldRef;

    jsonData['warning'] = tempWarning;

    return jsonData;
  }
}
