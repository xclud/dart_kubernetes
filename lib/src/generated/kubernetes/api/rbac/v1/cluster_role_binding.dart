import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/rbac/v1/role_ref.dart';
import 'package:kubernetes/src/generated/kubernetes/api/rbac/v1/subject.dart';

/// ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
class ClusterRoleBinding {
  /// The main constructor.
  const ClusterRoleBinding({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.roleRef,
    this.subjects,
  });

  /// Creates a ClusterRoleBinding from JSON data.
  ClusterRoleBinding.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          roleRef: RoleRef.fromJson(json['roleRef']),
          subjects: json['subjects'] != null
              ? Subject.listFromJson(
                  (json['subjects'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of ClusterRoleBinding from JSON data.
  static List<ClusterRoleBinding> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ClusterRoleBinding.fromJson(e)).toList();
  }

  /// Converts a ClusterRoleBinding instance to JSON data.
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
    jsonData['roleRef'] = roleRef.toJson();
    if (subjects != null) {
      jsonData['subjects'] = subjects!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata.
  final ObjectMeta? metadata;

  /// RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  final RoleRef roleRef;

  /// Subjects holds references to the objects the role applies to.
  final List<Subject>? subjects;
}
