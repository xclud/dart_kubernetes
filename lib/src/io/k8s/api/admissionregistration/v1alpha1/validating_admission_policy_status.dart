// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1alpha1;

/// ValidatingAdmissionPolicyStatus represents the status of a ValidatingAdmissionPolicy.
class ValidatingAdmissionPolicyStatus {
  /// Default constructor.
  const ValidatingAdmissionPolicyStatus({
    this.conditions,
    this.observedGeneration,
    this.typeChecking,
  });

  /// Creates a [ValidatingAdmissionPolicyStatus] from JSON data.
  factory ValidatingAdmissionPolicyStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];
    final tempObservedGenerationJson = json['observedGeneration'];
    final tempTypeCheckingJson = json['typeChecking'];

    final List<Condition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => Condition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final int? tempObservedGeneration = tempObservedGenerationJson;
    final TypeChecking? tempTypeChecking = tempTypeCheckingJson != null
        ? TypeChecking.fromJson(tempTypeCheckingJson)
        : null;

    return ValidatingAdmissionPolicyStatus(
      conditions: tempConditions,
      observedGeneration: tempObservedGeneration,
      typeChecking: tempTypeChecking,
    );
  }

  /// The conditions represent the latest available observations of a policy's current state.
  final List<Condition>? conditions;

  /// The generation observed by the controller.
  final int? observedGeneration;

  /// The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  final TypeChecking? typeChecking;

  /// Converts a [ValidatingAdmissionPolicyStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditions = conditions;
    final tempObservedGeneration = observedGeneration;
    final tempTypeChecking = typeChecking;

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    if (tempObservedGeneration != null) {
      jsonData['observedGeneration'] = tempObservedGeneration;
    }

    if (tempTypeChecking != null) {
      jsonData['typeChecking'] = tempTypeChecking.toJson();
    }

    return jsonData;
  }
}
