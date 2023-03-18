// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// NodeStatus is information about the current status of a node.
class NodeStatus {
  /// Default constructor.
  const NodeStatus({
    this.addresses,
    this.allocatable,
    this.capacity,
    this.conditions,
    this.config,
    this.daemonEndpoints,
    this.images,
    this.nodeInfo,
    this.phase,
    this.volumesAttached,
    this.volumesInUse,
  });

  /// Creates a [NodeStatus] from JSON data.
  factory NodeStatus.fromJson(Map<String, dynamic> json) {
    final tempAddressesJson = json['addresses'];
    final tempAllocatableJson = json['allocatable'];
    final tempCapacityJson = json['capacity'];
    final tempConditionsJson = json['conditions'];
    final tempConfigJson = json['config'];
    final tempDaemonEndpointsJson = json['daemonEndpoints'];
    final tempImagesJson = json['images'];
    final tempNodeInfoJson = json['nodeInfo'];
    final tempPhaseJson = json['phase'];
    final tempVolumesAttachedJson = json['volumesAttached'];
    final tempVolumesInUseJson = json['volumesInUse'];

    final List<NodeAddress>? tempAddresses = tempAddressesJson != null
        ? List<dynamic>.from(tempAddressesJson)
            .map(
              (e) => NodeAddress.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final Map<String, String>? tempAllocatable = tempAllocatableJson != null
        ? Map<String, String>.from(tempAllocatableJson)
        : null;

    final Map<String, String>? tempCapacity = tempCapacityJson != null
        ? Map<String, String>.from(tempCapacityJson)
        : null;

    final List<NodeCondition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => NodeCondition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final NodeConfigStatus? tempConfig = tempConfigJson != null
        ? NodeConfigStatus.fromJson(tempConfigJson)
        : null;
    final NodeDaemonEndpoints? tempDaemonEndpoints =
        tempDaemonEndpointsJson != null
            ? NodeDaemonEndpoints.fromJson(tempDaemonEndpointsJson)
            : null;

    final List<ContainerImage>? tempImages = tempImagesJson != null
        ? List<dynamic>.from(tempImagesJson)
            .map(
              (e) => ContainerImage.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final NodeSystemInfo? tempNodeInfo = tempNodeInfoJson != null
        ? NodeSystemInfo.fromJson(tempNodeInfoJson)
        : null;
    final String? tempPhase = tempPhaseJson;

    final List<AttachedVolume>? tempVolumesAttached =
        tempVolumesAttachedJson != null
            ? List<dynamic>.from(tempVolumesAttachedJson)
                .map(
                  (e) => AttachedVolume.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<String>? tempVolumesInUse = tempVolumesInUseJson != null
        ? List<String>.from(tempVolumesInUseJson)
        : null;

    return NodeStatus(
      addresses: tempAddresses,
      allocatable: tempAllocatable,
      capacity: tempCapacity,
      conditions: tempConditions,
      config: tempConfig,
      daemonEndpoints: tempDaemonEndpoints,
      images: tempImages,
      nodeInfo: tempNodeInfo,
      phase: tempPhase,
      volumesAttached: tempVolumesAttached,
      volumesInUse: tempVolumesInUse,
    );
  }

  /// List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example. Consumers should assume that addresses can change during the lifetime of a Node. However, there are some exceptions where this may not be possible, such as Pods that inherit a Node's address in its own status or consumers of the downward API (status.hostIP).
  final List<NodeAddress>? addresses;

  /// Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
  final Map<String, String>? allocatable;

  /// Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity.
  final Map<String, String>? capacity;

  /// Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition.
  final List<NodeCondition>? conditions;

  /// Status of the config assigned to the node via the dynamic Kubelet config feature.
  final NodeConfigStatus? config;

  /// Endpoints of daemons running on the Node.
  final NodeDaemonEndpoints? daemonEndpoints;

  /// List of container images on this node.
  final List<ContainerImage>? images;

  /// Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info.
  final NodeSystemInfo? nodeInfo;

  /// NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
  final String? phase;

  /// List of volumes that are attached to the node.
  final List<AttachedVolume>? volumesAttached;

  /// List of attachable volumes in use (mounted) by the node.
  final List<String>? volumesInUse;

  /// Converts a [NodeStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAddresses = addresses;
    final tempAllocatable = allocatable;
    final tempCapacity = capacity;
    final tempConditions = conditions;
    final tempConfig = config;
    final tempDaemonEndpoints = daemonEndpoints;
    final tempImages = images;
    final tempNodeInfo = nodeInfo;
    final tempPhase = phase;
    final tempVolumesAttached = volumesAttached;
    final tempVolumesInUse = volumesInUse;

    if (tempAddresses != null) {
      jsonData['addresses'] = tempAddresses;
    }

    if (tempAllocatable != null) {
      jsonData['allocatable'] = tempAllocatable;
    }

    if (tempCapacity != null) {
      jsonData['capacity'] = tempCapacity;
    }

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    if (tempConfig != null) {
      jsonData['config'] = tempConfig.toJson();
    }

    if (tempDaemonEndpoints != null) {
      jsonData['daemonEndpoints'] = tempDaemonEndpoints.toJson();
    }

    if (tempImages != null) {
      jsonData['images'] = tempImages;
    }

    if (tempNodeInfo != null) {
      jsonData['nodeInfo'] = tempNodeInfo.toJson();
    }

    if (tempPhase != null) {
      jsonData['phase'] = tempPhase;
    }

    if (tempVolumesAttached != null) {
      jsonData['volumesAttached'] = tempVolumesAttached;
    }

    if (tempVolumesInUse != null) {
      jsonData['volumesInUse'] = tempVolumesInUse;
    }

    return jsonData;
  }
}
