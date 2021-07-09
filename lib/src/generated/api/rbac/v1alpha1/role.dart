import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/rbac/v1alpha1/policy_rule.dart';

/// Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 Role, and will no longer be served in v1.22.
class Role {
  /// The main constructor.
  const Role({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.rules,
  });

  /// Creates a Role from JSON data.
  Role.fromJson(Map<String, dynamic> json)
      : this(
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

  /// Creates a list of Role from JSON data.
  static List<Role> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Role.fromJson(e)).toList();
  }

  /// Converts a Role instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }
    if (rules != null) {
      jsonData['rules'] = rules!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata.
  final ObjectMeta? metadata;

  /// Rules holds all the PolicyRules for this Role.
  final List<PolicyRule>? rules;
}
