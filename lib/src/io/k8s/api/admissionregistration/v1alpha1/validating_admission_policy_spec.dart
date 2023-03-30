// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1alpha1;

/// ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy.
class ValidatingAdmissionPolicySpec {
  /// Default constructor.
  const ValidatingAdmissionPolicySpec({
    this.auditAnnotations,
    this.failurePolicy,
    this.matchConditions,
    this.matchConstraints,
    this.paramKind,
    this.validations,
  });

  /// Creates a [ValidatingAdmissionPolicySpec] from JSON data.
  factory ValidatingAdmissionPolicySpec.fromJson(Map<String, dynamic> json) {
    final tempAuditAnnotationsJson = json['auditAnnotations'];
    final tempFailurePolicyJson = json['failurePolicy'];
    final tempMatchConditionsJson = json['matchConditions'];
    final tempMatchConstraintsJson = json['matchConstraints'];
    final tempParamKindJson = json['paramKind'];
    final tempValidationsJson = json['validations'];

    final List<AuditAnnotation>? tempAuditAnnotations =
        tempAuditAnnotationsJson != null
            ? List<dynamic>.from(tempAuditAnnotationsJson)
                .map(
                  (e) => AuditAnnotation.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final String? tempFailurePolicy = tempFailurePolicyJson;

    final List<MatchCondition>? tempMatchConditions =
        tempMatchConditionsJson != null
            ? List<dynamic>.from(tempMatchConditionsJson)
                .map(
                  (e) => MatchCondition.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final MatchResources? tempMatchConstraints =
        tempMatchConstraintsJson != null
            ? MatchResources.fromJson(tempMatchConstraintsJson)
            : null;
    final ParamKind? tempParamKind = tempParamKindJson != null
        ? ParamKind.fromJson(tempParamKindJson)
        : null;

    final List<Validation>? tempValidations = tempValidationsJson != null
        ? List<dynamic>.from(tempValidationsJson)
            .map(
              (e) => Validation.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return ValidatingAdmissionPolicySpec(
      auditAnnotations: tempAuditAnnotations,
      failurePolicy: tempFailurePolicy,
      matchConditions: tempMatchConditions,
      matchConstraints: tempMatchConstraints,
      paramKind: tempParamKind,
      validations: tempValidations,
    );
  }

  /// auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  final List<AuditAnnotation>? auditAnnotations;

  /// failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.
  ///
  /// A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource.
  ///
  /// failurePolicy does not define how validations that evaluate to false are handled.
  ///
  /// When failurePolicy is set to Fail, ValidatingAdmissionPolicyBinding validationActions define how failures are enforced.
  ///
  /// Allowed values are Ignore or Fail. Defaults to Fail.
  final String? failurePolicy;

  /// MatchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  ///
  /// If a parameter object is provided, it can be accessed via the `params` handle in the same manner as validation expressions.
  ///
  /// The exact matching logic is (in order):
  ///   1. If ANY matchCondition evaluates to FALSE, the policy is skipped.
  ///   2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.
  ///   3. If any matchCondition evaluates to an error (but none are FALSE):
  ///      - If failurePolicy=Fail, reject the request
  ///      - If failurePolicy=Ignore, the policy is skipped.
  final List<MatchCondition>? matchConditions;

  /// MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  final MatchResources? matchConstraints;

  /// ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  final ParamKind? paramKind;

  /// Validations contain CEL expressions which is used to apply the validation. Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is required.
  final List<Validation>? validations;

  /// Converts a [ValidatingAdmissionPolicySpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAuditAnnotations = auditAnnotations;
    final tempFailurePolicy = failurePolicy;
    final tempMatchConditions = matchConditions;
    final tempMatchConstraints = matchConstraints;
    final tempParamKind = paramKind;
    final tempValidations = validations;

    if (tempAuditAnnotations != null) {
      jsonData['auditAnnotations'] =
          tempAuditAnnotations.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempFailurePolicy != null) {
      jsonData['failurePolicy'] = tempFailurePolicy;
    }

    if (tempMatchConditions != null) {
      jsonData['matchConditions'] =
          tempMatchConditions.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempMatchConstraints != null) {
      jsonData['matchConstraints'] = tempMatchConstraints.toJson();
    }

    if (tempParamKind != null) {
      jsonData['paramKind'] = tempParamKind.toJson();
    }

    if (tempValidations != null) {
      jsonData['validations'] =
          tempValidations.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
