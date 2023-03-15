// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1alpha1;

/// ValidatingAdmissionPolicyBindingSpec is the specification of the ValidatingAdmissionPolicyBinding.
class ValidatingAdmissionPolicyBindingSpec {
  /// Default constructor.
  const ValidatingAdmissionPolicyBindingSpec({
    this.matchResources,
    this.paramRef,
    this.policyName,
  });

  /// Creates a [ValidatingAdmissionPolicyBindingSpec] from JSON data.
  factory ValidatingAdmissionPolicyBindingSpec.fromJson(
      Map<String, dynamic> json) {
    final tempMatchResourcesJson = json['matchResources'];
    final tempParamRefJson = json['paramRef'];
    final tempPolicyNameJson = json['policyName'];

    final tempMatchResources = tempMatchResourcesJson != null
        ? MatchResources.fromJson(tempMatchResourcesJson)
        : null;
    final tempParamRef =
        tempParamRefJson != null ? ParamRef.fromJson(tempParamRefJson) : null;
    final tempPolicyName = tempPolicyNameJson;

    return ValidatingAdmissionPolicyBindingSpec(
      matchResources: tempMatchResources,
      paramRef: tempParamRef,
      policyName: tempPolicyName,
    );
  }

  /// MatchResources declares what resources match this binding and will be validated by it. Note that this is intersected with the policy's matchConstraints, so only requests that are matched by the policy can be selected by this. If this is unset, all resources matched by the policy are validated by this binding When resourceRules is unset, it does not constrain resource matching. If a resource is matched by the other fields of this object, it will be validated. Note that this is differs from ValidatingAdmissionPolicy matchConstraints, where resourceRules are required.
  final MatchResources? matchResources;

  /// ParamRef specifies the parameter resource used to configure the admission control policy. It should point to a resource of the type specified in ParamKind of the bound ValidatingAdmissionPolicy. If the policy specifies a ParamKind and the resource referred to by ParamRef does not exist, this binding is considered mis-configured and the FailurePolicy of the ValidatingAdmissionPolicy applied.
  final ParamRef? paramRef;

  /// PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
  final String? policyName;

  /// Converts a [ValidatingAdmissionPolicyBindingSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMatchResources = matchResources;
    final tempParamRef = paramRef;
    final tempPolicyName = policyName;

    if (tempMatchResources != null) {
      jsonData['matchResources'] = tempMatchResources.toJson();
    }

    if (tempParamRef != null) {
      jsonData['paramRef'] = tempParamRef.toJson();
    }

    if (tempPolicyName != null) {
      jsonData['policyName'] = tempPolicyName;
    }

    return jsonData;
  }
}
