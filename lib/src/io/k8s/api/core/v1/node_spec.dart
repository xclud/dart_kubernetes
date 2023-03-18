// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// NodeSpec describes the attributes that a node is created with.
class NodeSpec {
  /// Default constructor.
  const NodeSpec({
    this.configSource,
    this.externalID,
    this.podCIDR,
    this.podCIDRs,
    this.providerID,
    this.taints,
    this.unschedulable,
  });

  /// Creates a [NodeSpec] from JSON data.
  factory NodeSpec.fromJson(Map<String, dynamic> json) {
    final tempConfigSourceJson = json['configSource'];
    final tempExternalIDJson = json['externalID'];
    final tempPodCIDRJson = json['podCIDR'];
    final tempPodCIDRsJson = json['podCIDRs'];
    final tempProviderIDJson = json['providerID'];
    final tempTaintsJson = json['taints'];
    final tempUnschedulableJson = json['unschedulable'];

    final NodeConfigSource? tempConfigSource = tempConfigSourceJson != null
        ? NodeConfigSource.fromJson(tempConfigSourceJson)
        : null;
    final String? tempExternalID = tempExternalIDJson;
    final String? tempPodCIDR = tempPodCIDRJson;
    final List<String>? tempPodCIDRs =
        tempPodCIDRsJson != null ? List<String>.from(tempPodCIDRsJson) : null;
    final String? tempProviderID = tempProviderIDJson;

    final List<Taint>? tempTaints = tempTaintsJson != null
        ? List<dynamic>.from(tempTaintsJson)
            .map((e) => Taint.fromJson(Map<String, dynamic>.from(e)))
            .toList()
        : null;

    final bool? tempUnschedulable = tempUnschedulableJson;

    return NodeSpec(
      configSource: tempConfigSource,
      externalID: tempExternalID,
      podCIDR: tempPodCIDR,
      podCIDRs: tempPodCIDRs,
      providerID: tempProviderID,
      taints: tempTaints,
      unschedulable: tempUnschedulable,
    );
  }

  /// Deprecated: Previously used to specify the source of the node's configuration for the DynamicKubeletConfig feature. This feature is removed.
  final NodeConfigSource? configSource;

  /// Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966.
  final String? externalID;

  /// PodCIDR represents the pod IP range assigned to the node.
  final String? podCIDR;

  /// podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
  final List<String>? podCIDRs;

  /// ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>.
  final String? providerID;

  /// If specified, the node's taints.
  final List<Taint>? taints;

  /// Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration.
  final bool? unschedulable;

  /// Converts a [NodeSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConfigSource = configSource;
    final tempExternalID = externalID;
    final tempPodCIDR = podCIDR;
    final tempPodCIDRs = podCIDRs;
    final tempProviderID = providerID;
    final tempTaints = taints;
    final tempUnschedulable = unschedulable;

    if (tempConfigSource != null) {
      jsonData['configSource'] = tempConfigSource.toJson();
    }

    if (tempExternalID != null) {
      jsonData['externalID'] = tempExternalID;
    }

    if (tempPodCIDR != null) {
      jsonData['podCIDR'] = tempPodCIDR;
    }

    if (tempPodCIDRs != null) {
      jsonData['podCIDRs'] = tempPodCIDRs;
    }

    if (tempProviderID != null) {
      jsonData['providerID'] = tempProviderID;
    }

    if (tempTaints != null) {
      jsonData['taints'] = tempTaints;
    }

    if (tempUnschedulable != null) {
      jsonData['unschedulable'] = tempUnschedulable;
    }

    return jsonData;
  }
}
