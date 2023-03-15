// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.kube__aggregator.pkg.apis.apiregistration.v1;

/// APIServiceList is a list of APIService objects.
class APIServiceList {
  /// Default constructor.
  const APIServiceList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a [APIServiceList] from JSON data.
  factory APIServiceList.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempItemsJson = json['items'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];

    final tempApiVersion = tempApiVersionJson;
    final tempItems = tempItemsJson;
    final tempKind = tempKindJson;
    final tempMetadata =
        tempMetadataJson != null ? ListMeta.fromJson(tempMetadataJson) : null;

    return APIServiceList(
      apiVersion: tempApiVersion,
      items: tempItems,
      kind: tempKind,
      metadata: tempMetadata,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Items is the list of APIService.
  final List<APIService> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ListMeta? metadata;

  /// Converts a [APIServiceList] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempItems = items;
    final tempKind = kind;
    final tempMetadata = metadata;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['items'] = tempItems;

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    return jsonData;
  }
}
