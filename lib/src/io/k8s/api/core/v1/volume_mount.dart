// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// VolumeMount describes a mounting of a Volume within a container.
class VolumeMount {
  /// Default constructor.
  const VolumeMount({
    required this.mountPath,
    this.mountPropagation,
    required this.name,
    this.readOnly,
    this.subPath,
    this.subPathExpr,
  });

  /// Creates a [VolumeMount] from JSON data.
  factory VolumeMount.fromJson(Map<String, dynamic> json) {
    final tempMountPathJson = json['mountPath'];
    final tempMountPropagationJson = json['mountPropagation'];
    final tempNameJson = json['name'];
    final tempReadOnlyJson = json['readOnly'];
    final tempSubPathJson = json['subPath'];
    final tempSubPathExprJson = json['subPathExpr'];

    final String tempMountPath = tempMountPathJson;
    final String? tempMountPropagation = tempMountPropagationJson;
    final String tempName = tempNameJson;
    final bool? tempReadOnly = tempReadOnlyJson;
    final String? tempSubPath = tempSubPathJson;
    final String? tempSubPathExpr = tempSubPathExprJson;

    return VolumeMount(
      mountPath: tempMountPath,
      mountPropagation: tempMountPropagation,
      name: tempName,
      readOnly: tempReadOnly,
      subPath: tempSubPath,
      subPathExpr: tempSubPathExpr,
    );
  }

  /// Path within the container at which the volume should be mounted.  Must not contain ':'.
  final String mountPath;

  /// mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
  final String? mountPropagation;

  /// This must match the Name of a Volume.
  final String name;

  /// Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
  final bool? readOnly;

  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final String? subPath;

  /// Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to "" (volume's root). SubPathExpr and SubPath are mutually exclusive.
  final String? subPathExpr;

  /// Converts a [VolumeMount] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMountPath = mountPath;
    final tempMountPropagation = mountPropagation;
    final tempName = name;
    final tempReadOnly = readOnly;
    final tempSubPath = subPath;
    final tempSubPathExpr = subPathExpr;

    jsonData['mountPath'] = tempMountPath;

    if (tempMountPropagation != null) {
      jsonData['mountPropagation'] = tempMountPropagation;
    }

    jsonData['name'] = tempName;

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempSubPath != null) {
      jsonData['subPath'] = tempSubPath;
    }

    if (tempSubPathExpr != null) {
      jsonData['subPathExpr'] = tempSubPathExpr;
    }

    return jsonData;
  }
}
