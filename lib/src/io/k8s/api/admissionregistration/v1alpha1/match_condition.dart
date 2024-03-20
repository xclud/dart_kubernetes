// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../admissionregistration_v1alpha1.dart';

/// Match Condition.
class MatchCondition {
  /// Default constructor.
  const MatchCondition({
    required this.expression,
    required this.name,
  });

  /// Creates a [MatchCondition] from JSON data.
  factory MatchCondition.fromJson(Map<String, dynamic> json) {
    final tempExpressionJson = json['expression'];
    final tempNameJson = json['name'];

    final String tempExpression = tempExpressionJson;
    final String tempName = tempNameJson;

    return MatchCondition(
      expression: tempExpression,
      name: tempName,
    );
  }

  /// Expression represents the expression which will be evaluated by CEL. Must evaluate to bool. CEL expressions have access to the contents of the AdmissionRequest and Authorizer, organized into CEL variables:
  ///
  /// 'object' - The object from the incoming request. The value is null for DELETE requests. 'oldObject' - The existing object. The value is null for CREATE requests. 'request' - Attributes of the admission request(/pkg/apis/admission/types.go#AdmissionRequest). 'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the principal (user or service account) of the request.
  ///   See https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz
  /// 'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer' and configured with the
  ///   request resource.
  /// Documentation on CEL: https://kubernetes.io/docs/reference/using-api/cel/
  ///
  /// Required.
  final String expression;

  /// Name is an identifier for this match condition, used for strategic merging of MatchConditions, as well as providing an identifier for logging purposes. A good name should be descriptive of the associated expression. Name must be a qualified name consisting of alphanumeric characters, '-', '_' or '.', and must start and end with an alphanumeric character (e.g. 'MyName',  or 'my.name',  or '123-abc', regex used for validation is '(\[A-Za-z0-9\]\[-A-Za-z0-9_.\]*)?\[A-Za-z0-9\]') with an optional DNS subdomain prefix and '/' (e.g. 'example.com/MyName')
  ///
  /// Required.
  final String name;

  /// Converts a [MatchCondition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempExpression = expression;
    final tempName = name;

    jsonData['expression'] = tempExpression;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
