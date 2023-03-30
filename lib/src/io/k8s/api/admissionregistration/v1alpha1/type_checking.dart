// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1alpha1;

/// TypeChecking contains results of type checking the expressions in the ValidatingAdmissionPolicy.
class TypeChecking {
  /// Default constructor.
  const TypeChecking({
    this.expressionWarnings,
  });

  /// Creates a [TypeChecking] from JSON data.
  factory TypeChecking.fromJson(Map<String, dynamic> json) {
    final tempExpressionWarningsJson = json['expressionWarnings'];

    final List<ExpressionWarning>? tempExpressionWarnings =
        tempExpressionWarningsJson != null
            ? List<dynamic>.from(tempExpressionWarningsJson)
                .map(
                  (e) => ExpressionWarning.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return TypeChecking(
      expressionWarnings: tempExpressionWarnings,
    );
  }

  /// The type checking warnings for each expression.
  final List<ExpressionWarning>? expressionWarnings;

  /// Converts a [TypeChecking] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempExpressionWarnings = expressionWarnings;

    if (tempExpressionWarnings != null) {
      jsonData['expressionWarnings'] =
          tempExpressionWarnings.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
