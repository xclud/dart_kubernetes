import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/api_resource.dart';

/// APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
class APIResourceList {
  /// The main constructor.
  const APIResourceList({
    this.apiVersion,
    required this.groupVersion,
    this.kind,
    required this.resources,
  });

  /// Creates a APIResourceList from JSON data.
  APIResourceList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          groupVersion: json['groupVersion'],
          kind: json['kind'],
          resources: json['resources'] != null
              ? APIResource.listFromJson(
                  (json['resources'] as Iterable).cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of APIResourceList from JSON data.
  static List<APIResourceList> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => APIResourceList.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// GroupVersion is the group and version this APIResourceList is for.
  final String groupVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Resources contains the name of the resources and if they are namespaced.
  final List<APIResource> resources;
}
