// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.storage.v1;

/// VolumeNodeResources is a set of resource limits for scheduling of volumes.
class VolumeNodeResources {
  /// Default constructor.
  const VolumeNodeResources({
    this.count,
  });

  /// Creates a [VolumeNodeResources] from JSON data.
  factory VolumeNodeResources.fromJson(Map<String, dynamic> json) {
    final tempCountJson = json['count'];

    final int? tempCount = tempCountJson;

    return VolumeNodeResources(
      count: tempCount,
    );
  }

  /// count indicates the maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is not specified, then the supported number of volumes on this node is unbounded.
  final int? count;

  /// Converts a [VolumeNodeResources] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCount = count;

    if (tempCount != null) {
      jsonData['count'] = tempCount;
    }

    return jsonData;
  }
}
