// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1alpha1;

/// ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy.
class ValidatingAdmissionPolicySpec {
  /// Default constructor.
  const ValidatingAdmissionPolicySpec({
    this.failurePolicy,
    this.matchConstraints,
    this.paramKind,
    required this.validations,
  });

  /// Creates a [ValidatingAdmissionPolicySpec] from JSON data.
  factory ValidatingAdmissionPolicySpec.fromJson(Map<String, dynamic> json) {
    final tempFailurePolicyJson = json['failurePolicy'];
    final tempMatchConstraintsJson = json['matchConstraints'];
    final tempParamKindJson = json['paramKind'];
    final tempValidationsJson = json['validations'];

    final tempFailurePolicy = tempFailurePolicyJson;
    final tempMatchConstraints = tempMatchConstraintsJson != null
        ? MatchResources.fromJson(tempMatchConstraintsJson)
        : null;
    final tempParamKind = tempParamKindJson != null
        ? ParamKind.fromJson(tempParamKindJson)
        : null;
    final tempValidations = tempValidationsJson;

    return ValidatingAdmissionPolicySpec(
      failurePolicy: tempFailurePolicy,
      matchConstraints: tempMatchConstraints,
      paramKind: tempParamKind,
      validations: tempValidations,
    );
  }

  /// FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail.
  final String? failurePolicy;

  /// MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  final MatchResources? matchConstraints;

  /// ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  final ParamKind? paramKind;

  /// Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required.
  final List<Validation> validations;

  /// Converts a [ValidatingAdmissionPolicySpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFailurePolicy = failurePolicy;
    final tempMatchConstraints = matchConstraints;
    final tempParamKind = paramKind;
    final tempValidations = validations;

    if (tempFailurePolicy != null) {
      jsonData['failurePolicy'] = tempFailurePolicy;
    }

    if (tempMatchConstraints != null) {
      jsonData['matchConstraints'] = tempMatchConstraints.toJson();
    }

    if (tempParamKind != null) {
      jsonData['paramKind'] = tempParamKind.toJson();
    }

    jsonData['validations'] = tempValidations;

    return jsonData;
  }
}
