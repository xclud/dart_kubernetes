// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
class GlusterfsVolumeSource {
  /// Default constructor.
  const GlusterfsVolumeSource({
    required this.endpoints,
    required this.path,
    this.readOnly,
  });

  /// Creates a [GlusterfsVolumeSource] from JSON data.
  factory GlusterfsVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempEndpointsJson = json['endpoints'];
    final tempPathJson = json['path'];
    final tempReadOnlyJson = json['readOnly'];

    final String tempEndpoints = tempEndpointsJson;
    final String tempPath = tempPathJson;
    final bool? tempReadOnly = tempReadOnlyJson;

    return GlusterfsVolumeSource(
      endpoints: tempEndpoints,
      path: tempPath,
      readOnly: tempReadOnly,
    );
  }

  /// endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String endpoints;

  /// path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String path;

  /// readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final bool? readOnly;

  /// Converts a [GlusterfsVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempEndpoints = endpoints;
    final tempPath = path;
    final tempReadOnly = readOnly;

    jsonData['endpoints'] = tempEndpoints;

    jsonData['path'] = tempPath;

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    return jsonData;
  }
}
