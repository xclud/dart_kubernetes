// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../resource_v1alpha2.dart';

/// ResourceHandle holds opaque resource data for processing by a specific kubelet plugin.
class ResourceHandle {
  /// Default constructor.
  const ResourceHandle({
    this.data,
    this.driverName,
  });

  /// Creates a [ResourceHandle] from JSON data.
  factory ResourceHandle.fromJson(Map<String, dynamic> json) {
    final tempDataJson = json['data'];
    final tempDriverNameJson = json['driverName'];

    final String? tempData = tempDataJson;
    final String? tempDriverName = tempDriverNameJson;

    return ResourceHandle(
      data: tempData,
      driverName: tempDriverName,
    );
  }

  /// Data contains the opaque data associated with this ResourceHandle. It is set by the controller component of the resource driver whose name matches the DriverName set in the ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and is intended for processing by the kubelet plugin whose name matches the DriverName set in this ResourceHandle.
  ///
  /// The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  final String? data;

  /// DriverName specifies the name of the resource driver whose kubelet plugin should be invoked to process this ResourceHandle's data once it lands on a node. This may differ from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in.
  final String? driverName;

  /// Converts a [ResourceHandle] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempData = data;
    final tempDriverName = driverName;

    if (tempData != null) {
      jsonData['data'] = tempData;
    }

    if (tempDriverName != null) {
      jsonData['driverName'] = tempDriverName;
    }

    return jsonData;
  }
}
