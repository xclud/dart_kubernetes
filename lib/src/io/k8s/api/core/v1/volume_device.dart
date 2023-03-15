// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// volumeDevice describes a mapping of a raw block device within a container.
class VolumeDevice {
  /// Default constructor.
  const VolumeDevice({
    required this.devicePath,
    required this.name,
  });

  /// Creates a [VolumeDevice] from JSON data.
  factory VolumeDevice.fromJson(Map<String, dynamic> json) {
    final tempDevicePathJson = json['devicePath'];
    final tempNameJson = json['name'];

    final tempDevicePath = tempDevicePathJson;
    final tempName = tempNameJson;

    return VolumeDevice(
      devicePath: tempDevicePath,
      name: tempName,
    );
  }

  /// devicePath is the path inside of the container that the device will be mapped to.
  final String devicePath;

  /// name must match the name of a persistentVolumeClaim in the pod.
  final String name;

  /// Converts a [VolumeDevice] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDevicePath = devicePath;
    final tempName = name;

    jsonData['devicePath'] = tempDevicePath;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
