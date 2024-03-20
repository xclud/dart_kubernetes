// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../flowcontrol_v1beta2.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjects {
  /// Default constructor.
  const PolicyRulesWithSubjects({
    this.nonResourceRules,
    this.resourceRules,
    required this.subjects,
  });

  /// Creates a [PolicyRulesWithSubjects] from JSON data.
  factory PolicyRulesWithSubjects.fromJson(Map<String, dynamic> json) {
    final tempNonResourceRulesJson = json['nonResourceRules'];
    final tempResourceRulesJson = json['resourceRules'];
    final tempSubjectsJson = json['subjects'];

    final List<NonResourcePolicyRule>? tempNonResourceRules =
        tempNonResourceRulesJson != null
            ? List<dynamic>.from(tempNonResourceRulesJson)
                .map(
                  (e) => NonResourcePolicyRule.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<ResourcePolicyRule>? tempResourceRules =
        tempResourceRulesJson != null
            ? List<dynamic>.from(tempResourceRulesJson)
                .map(
                  (e) => ResourcePolicyRule.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<Subject> tempSubjects = List<dynamic>.from(tempSubjectsJson)
        .map(
          (e) => Subject.fromJson(
            Map<String, dynamic>.from(e),
          ),
        )
        .toList();

    return PolicyRulesWithSubjects(
      nonResourceRules: tempNonResourceRules,
      resourceRules: tempResourceRules,
      subjects: tempSubjects,
    );
  }

  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  final List<NonResourcePolicyRule>? nonResourceRules;

  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  final List<ResourcePolicyRule>? resourceRules;

  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  final List<Subject> subjects;

  /// Converts a [PolicyRulesWithSubjects] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNonResourceRules = nonResourceRules;
    final tempResourceRules = resourceRules;
    final tempSubjects = subjects;

    if (tempNonResourceRules != null) {
      jsonData['nonResourceRules'] =
          tempNonResourceRules.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempResourceRules != null) {
      jsonData['resourceRules'] =
          tempResourceRules.map((e) => e.toJson()).toList(growable: false);
    }

    jsonData['subjects'] =
        tempSubjects.map((e) => e.toJson()).toList(growable: false);

    return jsonData;
  }
}
