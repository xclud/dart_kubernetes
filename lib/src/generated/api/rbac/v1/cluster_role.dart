import 'package:kubernetes/src/generated/api/rbac/v1/aggregation_rule.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/rbac/v1/policy_rule.dart';

/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
class ClusterRole {
  /// The main constructor.
  const ClusterRole({
    this.aggregationRule,
    this.apiVersion,
    this.kind,
    this.metadata,
    this.rules,
  });

  /// Creates a ClusterRole from JSON data.
  ClusterRole.fromJson(Map<String, dynamic> json)
      : this(
          aggregationRule: json['aggregationRule'] != null
              ? AggregationRule.fromJson(json['aggregationRule'])
              : null,
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          rules: json['rules'] != null
              ? PolicyRule.listFromJson(
                  (json['rules'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of ClusterRole from JSON data.
  static List<ClusterRole> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ClusterRole.fromJson(e)).toList();
  }

  /// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  final AggregationRule? aggregationRule;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata.
  final ObjectMeta? metadata;

  /// Rules holds all the PolicyRules for this ClusterRole.
  final List<PolicyRule>? rules;
}
