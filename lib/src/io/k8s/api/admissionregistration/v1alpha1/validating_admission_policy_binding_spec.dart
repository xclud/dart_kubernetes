// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../admissionregistration_v1alpha1.dart';

/// ValidatingAdmissionPolicyBindingSpec is the specification of the ValidatingAdmissionPolicyBinding.
class ValidatingAdmissionPolicyBindingSpec {
  /// Default constructor.
  const ValidatingAdmissionPolicyBindingSpec({
    this.matchResources,
    this.paramRef,
    this.policyName,
    this.validationActions,
  });

  /// Creates a [ValidatingAdmissionPolicyBindingSpec] from JSON data.
  factory ValidatingAdmissionPolicyBindingSpec.fromJson(
      Map<String, dynamic> json) {
    final tempMatchResourcesJson = json['matchResources'];
    final tempParamRefJson = json['paramRef'];
    final tempPolicyNameJson = json['policyName'];
    final tempValidationActionsJson = json['validationActions'];

    final MatchResources? tempMatchResources = tempMatchResourcesJson != null
        ? MatchResources.fromJson(tempMatchResourcesJson)
        : null;
    final ParamRef? tempParamRef =
        tempParamRefJson != null ? ParamRef.fromJson(tempParamRefJson) : null;
    final String? tempPolicyName = tempPolicyNameJson;
    final List<String>? tempValidationActions =
        tempValidationActionsJson != null
            ? List<String>.from(tempValidationActionsJson)
            : null;

    return ValidatingAdmissionPolicyBindingSpec(
      matchResources: tempMatchResources,
      paramRef: tempParamRef,
      policyName: tempPolicyName,
      validationActions: tempValidationActions,
    );
  }

  /// MatchResources declares what resources match this binding and will be validated by it. Note that this is intersected with the policy's matchConstraints, so only requests that are matched by the policy can be selected by this. If this is unset, all resources matched by the policy are validated by this binding When resourceRules is unset, it does not constrain resource matching. If a resource is matched by the other fields of this object, it will be validated. Note that this is differs from ValidatingAdmissionPolicy matchConstraints, where resourceRules are required.
  final MatchResources? matchResources;

  /// ParamRef specifies the parameter resource used to configure the admission control policy. It should point to a resource of the type specified in ParamKind of the bound ValidatingAdmissionPolicy. If the policy specifies a ParamKind and the resource referred to by ParamRef does not exist, this binding is considered mis-configured and the FailurePolicy of the ValidatingAdmissionPolicy applied.
  final ParamRef? paramRef;

  /// PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
  final String? policyName;

  /// validationActions declares how Validations of the referenced ValidatingAdmissionPolicy are enforced. If a validation evaluates to false it is always enforced according to these actions.
  ///
  /// Failures defined by the ValidatingAdmissionPolicy's FailurePolicy are enforced according to these actions only if the FailurePolicy is set to Fail, otherwise the failures are ignored. This includes compilation errors, runtime errors and misconfigurations of the policy.
  ///
  /// validationActions is declared as a set of action values. Order does not matter. validationActions may not contain duplicates of the same action.
  ///
  /// The supported actions values are:
  ///
  /// "Deny" specifies that a validation failure results in a denied request.
  ///
  /// "Warn" specifies that a validation failure is reported to the request client in HTTP Warning headers, with a warning code of 299. Warnings can be sent both for allowed or denied admission responses.
  ///
  /// "Audit" specifies that a validation failure is included in the published audit event for the request. The audit event will contain a `validation.policy.admission.k8s.io/validation_failure` audit annotation with a value containing the details of the validation failures, formatted as a JSON list of objects, each with the following fields: - message: The validation failure message string - policy: The resource name of the ValidatingAdmissionPolicy - binding: The resource name of the ValidatingAdmissionPolicyBinding - expressionIndex: The index of the failed validations in the ValidatingAdmissionPolicy - validationActions: The enforcement actions enacted for the validation failure Example audit annotation: `"validation.policy.admission.k8s.io/validation_failure": "[{"message": "Invalid value", {"policy": "policy.example.com", {"binding": "policybinding.example.com", {"expressionIndex": "1", {"validationActions": ["Audit"]}]"`
  ///
  /// Clients should expect to handle additional values by ignoring any values not recognized.
  ///
  /// "Deny" and "Warn" may not be used together since this combination needlessly duplicates the validation failure both in the API response body and the HTTP warning headers.
  ///
  /// Required.
  final List<String>? validationActions;

  /// Converts a [ValidatingAdmissionPolicyBindingSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMatchResources = matchResources;
    final tempParamRef = paramRef;
    final tempPolicyName = policyName;
    final tempValidationActions = validationActions;

    if (tempMatchResources != null) {
      jsonData['matchResources'] = tempMatchResources.toJson();
    }

    if (tempParamRef != null) {
      jsonData['paramRef'] = tempParamRef.toJson();
    }

    if (tempPolicyName != null) {
      jsonData['policyName'] = tempPolicyName;
    }

    if (tempValidationActions != null) {
      jsonData['validationActions'] = tempValidationActions;
    }

    return jsonData;
  }
}
