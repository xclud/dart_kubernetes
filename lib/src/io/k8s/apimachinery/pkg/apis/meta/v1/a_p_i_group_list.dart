// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
class APIGroupList {
  /// Default constructor.
  const APIGroupList({
    this.apiVersion,
    required this.groups,
    this.kind,
  });

  /// Creates a [APIGroupList] from JSON data.
  factory APIGroupList.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempGroupsJson = json['groups'];
    final tempKindJson = json['kind'];

    final String? tempApiVersion = tempApiVersionJson;
    final List<APIGroup> tempGroups = tempGroupsJson;
    final String? tempKind = tempKindJson;

    return APIGroupList(
      apiVersion: tempApiVersion,
      groups: tempGroups,
      kind: tempKind,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// groups is a list of APIGroup.
  final List<APIGroup> groups;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Converts a [APIGroupList] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempGroups = groups;
    final tempKind = kind;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['groups'] = tempGroups;

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    return jsonData;
  }
}
