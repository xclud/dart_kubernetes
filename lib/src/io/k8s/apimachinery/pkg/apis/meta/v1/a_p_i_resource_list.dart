// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
class APIResourceList {
  /// Default constructor.
  const APIResourceList({
    this.apiVersion,
    required this.groupVersion,
    this.kind,
    required this.resources,
  });

  /// Creates a [APIResourceList] from JSON data.
  factory APIResourceList.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempGroupVersionJson = json['groupVersion'];
    final tempKindJson = json['kind'];
    final tempResourcesJson = json['resources'];

    final String? tempApiVersion = tempApiVersionJson;
    final String tempGroupVersion = tempGroupVersionJson;
    final String? tempKind = tempKindJson;
    final List<APIResource> tempResources = tempResourcesJson;

    return APIResourceList(
      apiVersion: tempApiVersion,
      groupVersion: tempGroupVersion,
      kind: tempKind,
      resources: tempResources,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// groupVersion is the group and version this APIResourceList is for.
  final String groupVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// resources contains the name of the resources and if they are namespaced.
  final List<APIResource> resources;

  /// Converts a [APIResourceList] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempGroupVersion = groupVersion;
    final tempKind = kind;
    final tempResources = resources;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['groupVersion'] = tempGroupVersion;

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    jsonData['resources'] = tempResources;

    return jsonData;
  }
}
