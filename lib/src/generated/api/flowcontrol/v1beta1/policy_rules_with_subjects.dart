import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/non_resource_policy_rule.dart';
import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/resource_policy_rule.dart';
import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/subject.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjects {
  /// The main constructor.
  const PolicyRulesWithSubjects({
    this.nonResourceRules,
    this.resourceRules,
    required this.subjects,
  });

  /// Creates a PolicyRulesWithSubjects from JSON data.
  PolicyRulesWithSubjects.fromJson(Map<String, dynamic> json)
      : this(
          nonResourceRules: json['nonResourceRules'] != null
              ? NonResourcePolicyRule.listFromJson(
                  (json['nonResourceRules'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          resourceRules: json['resourceRules'] != null
              ? ResourcePolicyRule.listFromJson(
                  (json['resourceRules'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          subjects: json['subjects'] != null
              ? Subject.listFromJson(
                  (json['subjects'] as Iterable).cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of PolicyRulesWithSubjects from JSON data.
  static List<PolicyRulesWithSubjects> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PolicyRulesWithSubjects.fromJson(e)).toList();
  }

  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  final List<NonResourcePolicyRule>? nonResourceRules;

  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  final List<ResourcePolicyRule>? resourceRules;

  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  final List<Subject> subjects;
}
