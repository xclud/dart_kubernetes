// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha2;

/// AllocationResult contains attributes of an allocated resource.
class AllocationResult {
  /// Default constructor.
  const AllocationResult({
    this.availableOnNodes,
    this.resourceHandles,
    this.shareable,
  });

  /// Creates a [AllocationResult] from JSON data.
  factory AllocationResult.fromJson(Map<String, dynamic> json) {
    final tempAvailableOnNodesJson = json['availableOnNodes'];
    final tempResourceHandlesJson = json['resourceHandles'];
    final tempShareableJson = json['shareable'];

    final NodeSelector? tempAvailableOnNodes = tempAvailableOnNodesJson != null
        ? NodeSelector.fromJson(tempAvailableOnNodesJson)
        : null;

    final List<ResourceHandle>? tempResourceHandles =
        tempResourceHandlesJson != null
            ? List<dynamic>.from(tempResourceHandlesJson)
                .map(
                  (e) => ResourceHandle.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final bool? tempShareable = tempShareableJson;

    return AllocationResult(
      availableOnNodes: tempAvailableOnNodes,
      resourceHandles: tempResourceHandles,
      shareable: tempShareable,
    );
  }

  /// This field will get set by the resource driver after it has allocated the resource to inform the scheduler where it can schedule Pods using the ResourceClaim.
  ///
  /// Setting this field is optional. If null, the resource is available everywhere.
  final NodeSelector? availableOnNodes;

  /// ResourceHandles contain the state associated with an allocation that should be maintained throughout the lifetime of a claim. Each ResourceHandle contains data that should be passed to a specific kubelet plugin once it lands on a node. This data is returned by the driver after a successful allocation and is opaque to Kubernetes. Driver documentation may explain to users how to interpret this data if needed.
  ///
  /// Setting this field is optional. It has a maximum size of 32 entries. If null (or empty), it is assumed this allocation will be processed by a single kubelet plugin with no ResourceHandle data attached. The name of the kubelet plugin invoked will match the DriverName set in the ResourceClaimStatus this AllocationResult is embedded in.
  final List<ResourceHandle>? resourceHandles;

  /// Shareable determines whether the resource supports more than one consumer at a time.
  final bool? shareable;

  /// Converts a [AllocationResult] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAvailableOnNodes = availableOnNodes;
    final tempResourceHandles = resourceHandles;
    final tempShareable = shareable;

    if (tempAvailableOnNodes != null) {
      jsonData['availableOnNodes'] = tempAvailableOnNodes.toJson();
    }

    if (tempResourceHandles != null) {
      jsonData['resourceHandles'] = tempResourceHandles;
    }

    if (tempShareable != null) {
      jsonData['shareable'] = tempShareable;
    }

    return jsonData;
  }
}
