// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// AttachedVolume describes a volume attached to a node.
class AttachedVolume {
  /// Default constructor.
  const AttachedVolume({
    required this.devicePath,
    required this.name,
  });

  /// Creates a [AttachedVolume] from JSON data.
  factory AttachedVolume.fromJson(Map<String, dynamic> json) {
    final tempDevicePathJson = json['devicePath'];
    final tempNameJson = json['name'];

    final String tempDevicePath = tempDevicePathJson;
    final String tempName = tempNameJson;

    return AttachedVolume(
      devicePath: tempDevicePath,
      name: tempName,
    );
  }

  /// DevicePath represents the device path where the volume should be available.
  final String devicePath;

  /// Name of the attached volume.
  final String name;

  /// Converts a [AttachedVolume] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDevicePath = devicePath;
    final tempName = name;

    jsonData['devicePath'] = tempDevicePath;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
