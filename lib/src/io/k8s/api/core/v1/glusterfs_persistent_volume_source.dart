// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
class GlusterfsPersistentVolumeSource {
  /// Default constructor.
  const GlusterfsPersistentVolumeSource({
    required this.endpoints,
    this.endpointsNamespace,
    required this.path,
    this.readOnly,
  });

  /// Creates a [GlusterfsPersistentVolumeSource] from JSON data.
  factory GlusterfsPersistentVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempEndpointsJson = json['endpoints'];
    final tempEndpointsNamespaceJson = json['endpointsNamespace'];
    final tempPathJson = json['path'];
    final tempReadOnlyJson = json['readOnly'];

    final String tempEndpoints = tempEndpointsJson;
    final String? tempEndpointsNamespace = tempEndpointsNamespaceJson;
    final String tempPath = tempPathJson;
    final bool? tempReadOnly = tempReadOnlyJson;

    return GlusterfsPersistentVolumeSource(
      endpoints: tempEndpoints,
      endpointsNamespace: tempEndpointsNamespace,
      path: tempPath,
      readOnly: tempReadOnly,
    );
  }

  /// endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String endpoints;

  /// endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String? endpointsNamespace;

  /// path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String path;

  /// readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final bool? readOnly;

  /// Converts a [GlusterfsPersistentVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempEndpoints = endpoints;
    final tempEndpointsNamespace = endpointsNamespace;
    final tempPath = path;
    final tempReadOnly = readOnly;

    jsonData['endpoints'] = tempEndpoints;

    if (tempEndpointsNamespace != null) {
      jsonData['endpointsNamespace'] = tempEndpointsNamespace;
    }

    jsonData['path'] = tempPath;

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    return jsonData;
  }
}
