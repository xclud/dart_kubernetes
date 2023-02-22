import 'package:kubernetes/src/generated/kubernetes/api/admissionregistration/v1alpha1/match_resources.dart';
import 'package:kubernetes/src/generated/kubernetes/api/admissionregistration/v1alpha1/param_ref.dart';

/// ValidatingAdmissionPolicyBindingSpec is the specification of the ValidatingAdmissionPolicyBinding.
class ValidatingAdmissionPolicyBindingSpec {
  /// The main constructor.
  const ValidatingAdmissionPolicyBindingSpec({
    this.matchResources,
    this.paramRef,
    this.policyName,
  });

  /// Creates a ValidatingAdmissionPolicyBindingSpec from JSON data.
  ValidatingAdmissionPolicyBindingSpec.fromJson(Map<String, dynamic> json)
      : this(
          matchResources: json['matchResources'] != null ? MatchResources.fromJson(json['matchResources']): null,
          paramRef: json['paramRef'] != null ? ParamRef.fromJson(json['paramRef']): null,
          policyName: json['policyName'],
        );

  /// Creates a list of ValidatingAdmissionPolicyBindingSpec from JSON data.
  static List<ValidatingAdmissionPolicyBindingSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ValidatingAdmissionPolicyBindingSpec.fromJson(e)).toList();
  }

  /// Converts a ValidatingAdmissionPolicyBindingSpec instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(matchResources != null) { jsonData['matchResources'] = matchResources!.toJson(); }
    if(paramRef != null) { jsonData['paramRef'] = paramRef!.toJson(); }
    if(policyName != null) { jsonData['policyName'] = policyName!; }
    

    return jsonData;
  }


  /// MatchResources declares what resources match this binding and will be validated by it. Note that this is intersected with the policy's matchConstraints, so only requests that are matched by the policy can be selected by this. If this is unset, all resources matched by the policy are validated by this binding When resourceRules is unset, it does not constrain resource matching. If a resource is matched by the other fields of this object, it will be validated. Note that this is differs from ValidatingAdmissionPolicy matchConstraints, where resourceRules are required.
  final MatchResources? matchResources;

  /// ParamRef specifies the parameter resource used to configure the admission control policy. It should point to a resource of the type specified in ParamKind of the bound ValidatingAdmissionPolicy. If the policy specifies a ParamKind and the resource referred to by ParamRef does not exist, this binding is considered mis-configured and the FailurePolicy of the ValidatingAdmissionPolicy applied.
  final ParamRef? paramRef;

  /// PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
  final String? policyName;
}
