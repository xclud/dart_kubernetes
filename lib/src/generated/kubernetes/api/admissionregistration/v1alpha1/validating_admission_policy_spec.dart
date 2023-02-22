import 'package:kubernetes/src/generated/kubernetes/api/admissionregistration/v1alpha1/match_resources.dart';
import 'package:kubernetes/src/generated/kubernetes/api/admissionregistration/v1alpha1/param_kind.dart';
import 'package:kubernetes/src/generated/kubernetes/api/admissionregistration/v1alpha1/validation.dart';

/// ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy.
class ValidatingAdmissionPolicySpec {
  /// The main constructor.
  const ValidatingAdmissionPolicySpec({
    this.failurePolicy,
    this.matchConstraints,
    this.paramKind,
    required this.validations,
  });

  /// Creates a ValidatingAdmissionPolicySpec from JSON data.
  ValidatingAdmissionPolicySpec.fromJson(Map<String, dynamic> json)
      : this(
          failurePolicy: json['failurePolicy'],
          matchConstraints: json['matchConstraints'] != null
              ? MatchResources.fromJson(json['matchConstraints'])
              : null,
          paramKind: json['paramKind'] != null
              ? ParamKind.fromJson(json['paramKind'])
              : null,
          validations: json['validations'] != null
              ? Validation.listFromJson((json['validations'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of ValidatingAdmissionPolicySpec from JSON data.
  static List<ValidatingAdmissionPolicySpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ValidatingAdmissionPolicySpec.fromJson(e)).toList();
  }

  /// Converts a ValidatingAdmissionPolicySpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (failurePolicy != null) {
      jsonData['failurePolicy'] = failurePolicy!;
    }
    if (matchConstraints != null) {
      jsonData['matchConstraints'] = matchConstraints!.toJson();
    }
    if (paramKind != null) {
      jsonData['paramKind'] = paramKind!.toJson();
    }
    jsonData['validations'] = validations.map((item) => item.toJson()).toList();

    return jsonData;
  }

  /// FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail.
  final String? failurePolicy;

  /// MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  final MatchResources? matchConstraints;

  /// ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  final ParamKind? paramKind;

  /// Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required.
  final List<Validation> validations;
}
