// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha1;

/// ResourceClass is used by administrators to influence how resources are allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClass {
  /// Default constructor.
  const ResourceClass({
    this.apiVersion,
    required this.driverName,
    this.kind,
    this.metadata,
    this.parametersRef,
    this.suitableNodes,
  });

  /// Creates a [ResourceClass] from JSON data.
  factory ResourceClass.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempDriverNameJson = json['driverName'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempParametersRefJson = json['parametersRef'];
    final tempSuitableNodesJson = json['suitableNodes'];

    final tempApiVersion = tempApiVersionJson;
    final tempDriverName = tempDriverNameJson;
    final tempKind = tempKindJson;
    final tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final tempParametersRef = tempParametersRefJson != null
        ? ResourceClassParametersReference.fromJson(tempParametersRefJson)
        : null;
    final tempSuitableNodes = tempSuitableNodesJson != null
        ? NodeSelector.fromJson(tempSuitableNodesJson)
        : null;

    return ResourceClass(
      apiVersion: tempApiVersion,
      driverName: tempDriverName,
      kind: tempKind,
      metadata: tempMetadata,
      parametersRef: tempParametersRef,
      suitableNodes: tempSuitableNodes,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  ///
  /// Resource drivers have a unique name in forward domain order (acme.example.com).
  final String driverName;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata.
  final ObjectMeta? metadata;

  /// ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  final ResourceClassParametersReference? parametersRef;

  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ///
  /// Setting this field is optional. If null, all nodes are candidates.
  final NodeSelector? suitableNodes;

  /// Converts a [ResourceClass] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempDriverName = driverName;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempParametersRef = parametersRef;
    final tempSuitableNodes = suitableNodes;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['driverName'] = tempDriverName;

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempParametersRef != null) {
      jsonData['parametersRef'] = tempParametersRef.toJson();
    }

    if (tempSuitableNodes != null) {
      jsonData['suitableNodes'] = tempSuitableNodes.toJson();
    }

    return jsonData;
  }
}
