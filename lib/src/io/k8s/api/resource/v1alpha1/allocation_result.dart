// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha1;

/// AllocationResult contains attributed of an allocated resource.
class AllocationResult {
  /// Default constructor.
  const AllocationResult({
    this.availableOnNodes,
    this.resourceHandle,
    this.shareable,
  });

  /// Creates a [AllocationResult] from JSON data.
  factory AllocationResult.fromJson(Map<String, dynamic> json) {
    final tempAvailableOnNodesJson = json['availableOnNodes'];
    final tempResourceHandleJson = json['resourceHandle'];
    final tempShareableJson = json['shareable'];

    final tempAvailableOnNodes = tempAvailableOnNodesJson != null
        ? NodeSelector.fromJson(tempAvailableOnNodesJson)
        : null;
    final tempResourceHandle = tempResourceHandleJson;
    final tempShareable = tempShareableJson;

    return AllocationResult(
      availableOnNodes: tempAvailableOnNodes,
      resourceHandle: tempResourceHandle,
      shareable: tempShareable,
    );
  }

  /// This field will get set by the resource driver after it has allocated the resource driver to inform the scheduler where it can schedule Pods using the ResourceClaim.
  ///
  /// Setting this field is optional. If null, the resource is available everywhere.
  final NodeSelector? availableOnNodes;

  /// ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.
  ///
  /// The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  final String? resourceHandle;

  /// Shareable determines whether the resource supports more than one consumer at a time.
  final bool? shareable;

  /// Converts a [AllocationResult] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAvailableOnNodes = availableOnNodes;
    final tempResourceHandle = resourceHandle;
    final tempShareable = shareable;

    if (tempAvailableOnNodes != null) {
      jsonData['availableOnNodes'] = tempAvailableOnNodes.toJson();
    }

    if (tempResourceHandle != null) {
      jsonData['resourceHandle'] = tempResourceHandle;
    }

    if (tempShareable != null) {
      jsonData['shareable'] = tempShareable;
    }

    return jsonData;
  }
}
