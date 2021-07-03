import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_definition_spec.dart';
import 'package:kubernetes/src/generated/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_definition_status.dart';

/// CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>.
class CustomResourceDefinition {
  /// The main constructor.
  const CustomResourceDefinition({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a CustomResourceDefinition from JSON data.
  CustomResourceDefinition.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: CustomResourceDefinitionSpec.fromJson(json['spec']),
          status: json['status'] != null
              ? CustomResourceDefinitionStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of CustomResourceDefinition from JSON data.
  static List<CustomResourceDefinition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CustomResourceDefinition.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// spec describes how the user wants the resources to appear
  final CustomResourceDefinitionSpec spec;

  /// status indicates the actual state of the CustomResourceDefinition
  final CustomResourceDefinitionStatus? status;
}
