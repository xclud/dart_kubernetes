// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Endpoints is a collection of endpoints that implement the actual service. Example:
///
/// 	 Name: "mysvc",
/// 	 Subsets: [
/// 	   {
/// 	     Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
/// 	     Ports: [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
/// 	   },
/// 	   {
/// 	     Addresses: [{"ip": "10.10.3.3"}],
/// 	     Ports: [{"name": "a", "port": 93}, {"name": "b", "port": 76}]
/// 	   },
/// 	].
class Endpoints {
  /// Default constructor.
  const Endpoints({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.subsets,
  });

  /// Creates a [Endpoints] from JSON data.
  factory Endpoints.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempSubsetsJson = json['subsets'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final List<EndpointSubset>? tempSubsets = tempSubsetsJson;

    return Endpoints(
      apiVersion: tempApiVersion,
      kind: tempKind,
      metadata: tempMetadata,
      subsets: tempSubsets,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
  final List<EndpointSubset>? subsets;

  /// Converts a [Endpoints] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempSubsets = subsets;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempSubsets != null) {
      jsonData['subsets'] = tempSubsets;
    }

    return jsonData;
  }
}
